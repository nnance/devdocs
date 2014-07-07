#!/bin/bash

sudo apt-get --purge remove ruby-rvm
sudo rm -rf /usr/share/ruby-rvm /etc/rvmrc /etc/profile.d/rvm.sh
\curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=enable --auto-dotfiles
