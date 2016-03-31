#!/bin/sh

if test ! $(which pip)
then
  echo "  Installing pip for you."

  pip install --upgrade pip
fi

if [[ ! $(pip list |grep virtualenvwrapper) ]]
then
	echo "  Installing virtualenvwrapper for you."
	
	pip install virtualenvwrapper
fi