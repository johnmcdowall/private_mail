# Private Mail
Private Mail implements simple private messaging functionality between users in a Rails 3.1+ application.

## Installation

* Add gem 'private_mail' to your Gemfile
* bundle install
* Make sure your User model exists already... 
* rails g private_mail:install
* Add 'acts_as_messageable' to your user model
* run rake db:migrate

## Simple Testing

We're gunna go old school and fire up the Rails Console:

* rails c
* Assign an instance variable to one of your users: @user.first
* Check out the mailbox: @user.mailbox
* Send yourself a message: @me.send_message( @me, "Yo", "Yo!" )
* Check the mailbox count: @me.mailbox.mail_count 

## TODO
The goal of this gem is to move away from the bones of acts_as_messageable and towards a more modern Rails 3 style approach, and add new functionality. 