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

if [[ ! $(pip list |grep fake-factory) ]]
then
	echo "  Installing fake-factory for you."
	
	pip install fake-factory
fi

if [[ ! $(pip list |grep requests) ]]
then
	echo "  Installing requests for you."
	
	pip install requests
fi