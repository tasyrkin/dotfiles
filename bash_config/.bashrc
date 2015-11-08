
#adjust PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/libexec:$PATH

#User-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

GOTO_PARENT_DIRECTORIES=(~/openSource)
FILES_TO_SOURCE=( ~/.goto-config.sh ~/.git-config.sh )
for file in ${FILES_TO_SOURCE[@]}; do
  if [ -a $file ]; then
    source $file
  fi
done

# history settings
  # don't put duplicVate lines or lines starting with space in the history.
  # See bash(1) for more options
HISTCONTROL=ignoreboth

  # append to the history file, don't overwrite it
shopt -s histappend

  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
