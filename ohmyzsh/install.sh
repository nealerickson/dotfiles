#!/bin/sh
#
# Oh My Zsh
#
# This installs some of the common dependencies needed (or at least desired)
# using Oh My Zsh.

# Check for Oh My Zsh
if ! [ -d "${HOME}/.oh-my-zsh" ]
then
  echo "  Installing Oh My Zsh for you."

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

fi

exit 0
