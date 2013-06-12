def getParsedJSON(url)
	uri = URI.parse(url)
	http = Net::HTTP.new(uri.host, uri.port)
	request = Net::HTTP::Get.new(uri.request_uri)
	request.initialize_http_header({"Accept-Charset" => "utf-8"})
	response = http.request(request)
	result = JSON.parse(response.body)
end

#this is for querying all tech events within 50 miles of Durham,NC
url = "http://api.meetup.com/2/open_events?status=upcoming&radius=50.0&category=34&limited_events=False&desc=False&offset=0&format=json&zip=27701&page=500&key=5b743fa5256266b815b22f64775a"
result = getParsedJSON(url)
result["results"].each do |event|
  date = Time.at(event["time"]/1000.0)
  title = event["name"][0,99]
  organizer = event["group"]["name"]
  content = event["description"]
  link = event["event_url"]
  Event.create!(:content => content, :date=> date, :title=> title, :organizer=> organizer, :link=> link)
end