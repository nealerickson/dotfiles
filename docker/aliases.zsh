alias d='docker $*'
alias d-c='docker-compose $*'

alias docker-nuke="docker ps -a -q | xargs docker stop && docker ps -a -q | xargs docker rm && docker images -a -q | xargs docker rmi -f"
# alias docker-nuke-volumes="docker volume rm `docker volume ls -qf dangling=true`"
# alias docker-stop-all="docker ps -a -q | xargs docker stop"
