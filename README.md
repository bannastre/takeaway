Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            | N.O.M |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```

## Project Description ##

This program models a takeaway restaurant booking system. A user can:
- see a list of dishes with prices
- select some number of available dishes
- check that the total cost of dishes in their order
- receive a text to confirm the order cost and estimated delivery time

### Getting Started#

run:  
      ```$ pry ```  
      ```require './src/takeaway.rb'```  

An example walkthrough to place an order:

```
$ takeaway = Takeaway.new(Menu.new({ pizza: 10 }))
$ takeaway.new_order
$ order = takeaway.view_orders.last
$ order.add_to_basket(:pizza, 1)
$ order.view_basket
$ order.time
$ order.total
$ order.confirm(number)
```  


### Prerequisites

This project requires the Twilio RubyGem [(more info...)](https://www.twilio.com/docs/libraries/ruby).

You will need to create a file named ```api_keys.rb``` at the project root directory with the following constants defined per your [Twilio account](https://www.twilio.com):

    ACCOUNT_SID = '****************'
    AUTH_TOKEN = '****************'
    FROM = '+44 0000 111 222'
    TO = '+44 3333 444 555'

All other prerequisites are available by running the command ```$ bundle```.

You will need to run the command ```$ gem install bundle``` if you don't have bundle already installed.

### Structure ###
      .
      ├── api_keys.rb
      ├── feature_test.rb
      ├── spec
      │   ├── menu_spec.rb
      │   ├── notification_spec.rb
      │   ├── order_spec.rb
      │   ├── spec_helper.rb
      │   └── takeaway_spec.rb
      └── src
          ├── menu.rb
          ├── notification.rb
          ├── order.rb
          └── takeaway.rb

### Development Methodology

This program was built and tested using Test Driven Development

* [Ruby](https://www.ruby-lang.org) - The language used to develop this program - v2.4.0p0 (2016-12-24 revision 57164)
* [Rspec](http://rspec.info) - The testing framework used to drive development - v3.5.4
