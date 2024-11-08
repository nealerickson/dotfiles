# echo "Oh My Zsh Configuration: zshrc"
# Oh My Zsh Configuration

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

DISABLE_LS_COLORS='true'

COMPLETION_WAITING_DOTS='true'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git github ruby rbenv fasd history composer)

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

#eval "$(pyenv init - zsh)"
#eval "$(pyenv virtualenv-init -)"
#eval "$(rbenv init -)"

# export CFLAGS=-I/usr/local/opt/openssl/include
# export LDFLAGS=-L/usr/local/opt/openssl/lib
# export PATH=/usr/local/opt/openssl/bin:$PATH

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

# export PATH=$PATH:$HOME/flutter/bin

export PATH="$PATH:/Users/neal/.dotnet/tools"