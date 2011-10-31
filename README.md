# Private Mail
Private Mail implements simple private messaging functionality between users in a Rails 3.1+ application.

## Installation

* Add gem 'private_mail' to your Gemfile
* bundle install
* Make sure your User model exists already... 
* rails g private_message:install
* Add 'acts_as_messageable' to your user model

## TODO
The goal of this gem is to move away from the bones of acts_as_messageable and towards a more modern Rails 3 style approach, and add new functionality. 