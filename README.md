# MooBook

## Description

A social network app. Users can sign up/ log in and post messages.

There is a general wall where all messages appear and
each user also has their own wall. A user can post on the general wall, any other user's wall and their own wall. A message that user X posted on user Y's wall will be displayed with tag *X => Y*. A message that user X posted on their own wall will be displayed as *From X*. General wall contains all messages, including those that were posted on private walls.


## Use

Clone the repo https://github.com/shihhanwang/Acebook-Byte-3.git

Run `bundle install` (to install dependencies)

Run `rake db:create` (to create database)

Run `rake db:migrate` (to apply latest database version)

Run `rails s` to start the server

## Technology

The app is build using Ruby on Rails from a template we were provided by the Makers Academy.


User and post data is stored in a Postgres database.


User related operations such as user authentication and secure storage of passwords is handled by the Rails Devise gem. 


#### Testing / Linting / Test coverage


Feature tests are written using Capybara and Selenium webdriver. 

We used Rubocop to check for styling errors and Simplecov gem to ensure full test coverage.


## Workflow/ Process

We were using several agile/XP techniques- daily standups and retros, pair programming, mobbing and a version of [Kanban board]
(https://waffle.io/shihhanwang/Acebook-Byte-3/join).
We also kept a log of the standups, retros and daily work in github wiki.

It was the first time we used Ruby on Rails, Travis CI and Heroku, so learning the technologies was part of the process. Our learning notes can be seen in the project wiki.

We used Travis CI and Heroku pipeline for Integration Testing/Continuous Delivery. Heroku Review Apps were particularly useful to track the changes in our application.

## Team 

[Shih Han](https://github.com/shihhanwang), [Jihin Ip](https://github.com/mitsukan), [Marwa Elali](https://github.com/marwiz108), [Irbe Krumina](https://github.com/irbekrm)


The app was built as a Makers Academy course project
