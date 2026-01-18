# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -la'


## https://robotmoon.com/bash-prompt-generator/
#export PS1="\[$(tput setaf 34)\]\u\[$(tput setaf 40)\]@\[$(tput setaf 46)\]\h \[$(tput setaf 154)\]\w \[$(tput sgr0)\]# "
export PS1="\[$(tput setaf 216)\]\u\[$(tput setaf 160)\]@\[$(tput setaf 202)\]\h \[$(tput setaf 131)\]\w \[$(tput sgr0)\]# "
