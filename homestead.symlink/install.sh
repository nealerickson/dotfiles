#!/bin/sh
#
# Laravel Homestead
#
# Laravel Homestead is an official, pre-packaged Vagrant box that provides 
# you a wonderful development environment without requiring you to install 
# PHP, a web server, and any other server software on your local machine.
#
# See: https://laravel.com/docs/homestead

# Check for Homestead
if ! [ -d "${HOME}/Homestead" ]
then
  echo "  Checking out Laravel Homestead for you."

  # vagrant box add laravel/homestead

  git clone --depth 1 https://github.com/laravel/homestead.git $HOME/Homestead
  
  # bash $HOME/Homestead/init.sh

fi

exit 0
