#!/bin/sh
#
# nvm
#
# nvm is a POSIX-compliant bash script to manage multiple active node.js versions

# Check for nvm
if ! [ -d "${HOME}/.nvm" ]
then
  echo "  Installing nvm for you."

  nvm-install

  # Install latest node LTS version
  nvm install --lts
fi

exit 0
