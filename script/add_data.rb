def getParsedJSON(url, https)
	uri = URI.parse(url)
	http = Net::HTTP.new(uri.host, uri.port)
	request = Net::HTTP::Get.new(uri.request_uri)
	request.initialize_http_header({"Accept-Charset" => "utf-8"})
	if https == 0
	  response = http.request(request)
	else
	  response = Net::HTTP.start(uri.host, use_ssl: true, verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
        http.get uri.request_uri, 'User-Agent' => 'MyLib v1.2'
      end
    end
	result = JSON.parse(response.body)
end

# this is for querying all tech events within 50 miles of Durham,NC on Meetup
url = "http://api.meetup.com/2/open_events?status=upcoming&radius=50.0&category=34&limited_events=False&desc=False&offset=0&format=json&zip=27701&page=500&key=5b743fa5256266b815b22f64775a"
result = getParsedJSON(url, 0)
result["results"].each do |event|
  date = Time.at(event["time"]/1000.0)
  title = event["name"][0,99]
  organizer = event["group"]["name"]
  content = event["description"]
  link = event["event_url"]
  if Event.pair_exists?(date, title, organizer) == false
    Event.create!(:content => content, :date=> date, :title=> title, :organizer=> organizer, :link=> link)
  end
end

# this is for querying some tech events within 50 miles of Durham,NC on Eventbrite
keywords = ["ruby", "javascript", "start-up", "startup", "python", "php", "web", "data", "entrepreneur", "java", "C", "hack", "social media", "online marketing", "user design", "ui", "ui/ux", "venture capital", "fundraising"]
base_url = "https://www.eventbrite.com/json/event_search?app_key=WSNTTAWEAGBXTF6DEZ&postal_code=27701&within=50&keywords="
keywords_string = ""
keywords.each { |keyword| keywords_string << keyword << "%20OR%20" }
keywords_string = keywords_string.chomp('%20OR%20')
url = base_url << keywords_string
result = getParsedJSON(url, 1)["events"][1..-1]

result.each do |event_wrapper|
  event = event_wrapper["event"]
  date = Time.parse(event["start_date"])
  title = event["title"][0,99]
  organizer = event["organizer"]["name"]
  content = event["description"]
  link = event["url"]
  if Event.pair_exists?(date, title, organizer) == false
    Event.create!(:content => content, :date=> date, :title=> title, :organizer=> organizer, :link=> link)
  end
end