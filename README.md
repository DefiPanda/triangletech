triangletech
============

triangletech is the most comprehensive event calendar for triangle startup and tech meetings. Being in triangle area for 4 years, I always feel the great inconvinience of having to search for events I am interested on tens or hundreds of different websites because there is just not a single website does it for all. I think it will be cool to build such a site with all the triangle startup and tech events available online.  
  
What triangletech have?  
---  
A calender that user can CRUD events, a simple but beautiful calendar UI, and the script to auto discover and add tech/startup events through Meetup and Eventbrite APIs.
  
Contribute to this repo  
---  
If you have anything you want to add or modify, by all means go ahead, write your code and make a pull request. Take a look at issue list can always be a good idea at getting to know what to build next. Use these commands to get it up and running:  
```
bundle install  
rake db:migrate  
rails runner script/add_data.rb  
rails s -p 8000  
```  
Then you can visit the calendar at: localhost:8000

How to access online?  
---  
[Please click here to go to this app.](http://triangletech.herokuapp.com/)  
Currently the script to update the database runs everyday at 09:00 UTC.
