# MooBook

## Description

A social network app. Users can sign up/ log in and post messages.
There is a general wall where all messages appear and
each user also has their own wall. A user can post on the general wall, any other user's wall and their own wall. A message that user X posted on user Y's wall will be displayed with tag *X => Y*. A message that user X posted on their own wall will be displayed as *From X*. General wall contains all messages, including those that were posted on private walls.

## Use

Clone the repo https://github.com/shihhanwang/Acebook-Byte-3.git
Run *bundle install* (to install dependencies)
Run *rake db:create* (to create database)
Run *rake db:migrate* (to apply latest database version)
Run *rails s* to start the server

## Technology

The app is build using Ruby on Rails from a template we were provided by the Makers Academy.

User and post data is stored in a Postgres database.

User related operations such as user authentication and secure storage of passwords is handled by the Rails Devise gem. 

#### Testing / Linting / Test coverage

Feature tests done using Capybara and Selenium webdriver. 
Rubocop for styling errors.
Simplecov gem to ensure full test coverage.

The card wall is here: https://waffle.io/shihhanwang/Acebook-Byte-3/join

## Team 
[Shih Han](https://github.com/shihhanwang), [Jihin Ip](https://github.com/mitsukan), [Marwa Elali](https://github.com/marwiz108), [Irbe Krumina](https://github.com/irbekrm)

The app was built as a Makers Academy course project
