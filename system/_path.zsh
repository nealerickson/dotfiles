source $DOTFILES/functions/pathmunge

export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

pathmunge $HOME/.cask/bin after

export PATH