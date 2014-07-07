#!/bin/bash

sudo apt-get install git

cd /vagrant/shell
sudo ./nodejs.sh
sudo ./rvm.sh

mkdir ~/devdocs
cd ~/devdocs

git clone https://github.com/Thibaut/devdocs.git && cd devdocs
gem install bundler
bundle install
thor docs:download --all
rackup
