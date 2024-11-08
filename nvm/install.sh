#!/bin/sh
#
# nvm
#
# nvm is a POSIX-compliant bash script to manage multiple active node.js versions

# Check for nvm
if ! [ -d "${HOME}/.nvm" ]
then
  echo "  Installing nvm for you."

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

  # Install latest node LTS version
  nvm install --lts
fi

exit 0
