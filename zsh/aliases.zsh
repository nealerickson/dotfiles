alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Schedule Engine

alias se="$HOME/Code/Ignite/Services/se-system/cli/cli.js"
alias sedo="se docker"
alias sedos="se docker start"
alias seg="se docker gulp"
alias segt="se docker gulp test"
alias segti="se docker gulp test:integration"
alias see="se exec"
alias segfa="se exec 'git fetch --all --prune'"
alias segst="se git status"
alias segbda="se exec \"git branch --no-color --merged | command grep -vE '^(\*|\s*(master|develop|dev)\s*$)' | command xargs -n 1 git branch -d\""


# Docker
alias docker-nuke="docker ps -a -q | xargs docker stop && docker ps -a -q | xargs docker rm && docker images -a -q | xargs docker rmi -f"
# alias docker-nuke-volumes="docker volume rm `docker volume ls -qf dangling=true`"
# alias docker-stop-all="docker ps -a -q | xargs docker stop"
