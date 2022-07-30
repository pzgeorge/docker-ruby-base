#!/bin/bash
bundle install

# initialize database if it does not exist
if ! bundle exec rake dev:db:exists ;
then
  bundle exec rake db:create ;
  bundle exec rake db:schema:load ;
  bundle exec rake audit:db:create ;
  bundle exec rake audit:db:schema:load ;
  bundle exec rake db:seed ;
fi

yarn install

# start server
bundle exec rails s -b 0.0.0.0
