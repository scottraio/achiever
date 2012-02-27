Achiever
========

Achiever is a simple way to add achievements into your rails application.

Installation
------------

In *Rails 3*, add this to your Gemfile and run bundle install. 

	gem "achiever"

Run the migration

	bundle exec rake db:migrate

Getting Started
---------------

1. Define your achievements
	
		achieves :award, :for => :user



