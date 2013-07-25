triangletech
============  
[![Code Climate](https://codeclimate.com/github/jw2013/triangletech.png)](https://codeclimate.com/github/jw2013/triangletech)  

triangletech is the most comprehensive event calendar for triangle startup and tech meetings. Being in triangle area for 4 years, I always feel the great inconvinience of having to search for events I am interested on tens or hundreds of different websites because there is just not a single website does it for all. I think it will be cool to build such a site with all the triangle startup and tech events available online.  

License  
---  
The MIT License (MIT)  

Copyright (c) 2013 Jack Wang  

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  

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
[Please click here to go to this app.](http://www.triangletech.co)  
Currently the script to update the database runs everyday at 09:00 UTC.
