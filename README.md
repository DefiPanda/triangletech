triangletech
============

triangletech aims to become the most comprehensive event calendar for triangle startup and tech meetings. Being in triangle area for 4 years, I always feel the great inconvinience of having to search for events I am interested on tens or hundreds of different websites because there is just not a single website does it for all. I think it will be cool to build such a site with all the triangle startup and tech events available online.  
  
What is already there?  
---  
A calender that user can CRUD events, a simple but beautiful calendar UI, and the script to auto discover and add Meetup APIs.
  
What is left to build?  
---  
We need more script to get triangle startup and tech events online (e.g. through varies API and weekly web searching on awesome sites like exit event.)  
We've finish the script to get Meetup triangle tech events and now the only main thing left to do is to search for triangle startup event through local website.
  
Contribute to this repo  
---  
If you have anything you want to add or modify, by all means go ahead, write your code and make a pull request. Take a look at issue list can always be a good idea at getting to know what to build next.  
  
How to run this calendar offline?  
---  
Clone this repo to your machine, then run:  
bundle install  
rake db:migrate  
rails runner script/add_data.rb  
rails s  
... then everything should be up and running.

How to access online?  
---  
Once I've finish writing this project, I will post the calender live.  
  
Screenshot of what we have after meetup integration  
---
![ScreenShot](https://raw.github.com/jw2013/triangletech/master/doc/development/screenshot/screenshot.png)
