#!/bin/sh

sudo rm -Rf app bin config db lib log public storage test tmp vendor
sudo rm -f .gitattributes .gitignore .ruby-version config.ru Gemfile Gemfile.lock Rakefile
