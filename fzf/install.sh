#!/bin/sh
#
# fzf
#
# fzf is a general-purpose command-line fuzzy finder.

# Check for fzf
if ! [ -d "${HOME}/.fzf" ]
  echo "  Installing fzf for you."

  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
  
  $HOME/.fzf/install

fi

exit 0
