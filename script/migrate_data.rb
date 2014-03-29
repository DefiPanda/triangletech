require 'csv'    

csv_text = File.read('script/psrygxofkwvbndxkxjyizoctwdnz.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  data = row.to_hash
  if data["content"].blank? == false && data["date"].blank? == false && data["title"].blank?  == false && data["organizer"].blank?  == false
    Event.create!(:content => data["content"], :date=> data["date"], :title=> data["title"], :organizer=> data["organizer"], :link=> data["link"], :username=> "triangletech") 
  end
end