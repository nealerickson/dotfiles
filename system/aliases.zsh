# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias zshconfig='e ~/.zshrc'
alias ohmyzsh='e ~/.oh-my-zsh'

alias sshconfig='e ~/.ssh/config'

alias vim='nocorrect vim '
alias ghci='nocorrect ghci '
alias ghc='nocorrect ghc '
alias erlc='nocorrect erlc '
alias erl='nocorrect erl '

alias pcat='pygmetize'

alias cbp='pbpaste|less'

alias cpwd="pwd | tr -d '\n' | pbcopy"
