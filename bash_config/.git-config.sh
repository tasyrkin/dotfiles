#git configuration
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\u@\h:\w\[\e[0;32m\]$(parse_git_branch)\[\e[0m\]\$ '

# remains here for reference
#RED="\[\033[0;31m\]"
#YELLOW="\[\033[0;33m\]"
#GREEN="\[\033[0;32m\]"
#NO_COLOR="\[\033[0m\]"

. ~/.git-completion.sh

alias git-graph='git log --pretty=oneline --graph --decorate --all'
