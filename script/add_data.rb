#this is for querying all tech events within 50 miles of Durham,NC
url = "http://api.meetup.com/2/open_events?status=upcoming&radius=50.0&category=34&limited_events=False&desc=False&offset=0&format=json&zip=27701&page=500&key=5b743fa5256266b815b22f64775a"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
result = JSON.parse(response.body)

result["results"].each do |event|
  puts Time.at(event["time"]/1000.0)
  puts event["name"] + " @ " + event["group"]["name"]
  puts event["description"]
end