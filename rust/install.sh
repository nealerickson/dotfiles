#!/bin/sh
#
# rust

# Check for nvm
if ! [ -d "${HOME}/.cargo" ]
then
  echo "  Installing rust for you."

  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash
fi

exit 0
