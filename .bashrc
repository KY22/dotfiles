# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -x /usr/bin/dircolors ]; then
    [ -r ~/.dircolorsrc ] && eval "$(dircolors -b ~/.dircolorsrc)" || eval "$(dircolors -b)"
fi

# Prompt
PS1='\u@\h \W\$ '

# Environment
BROWSER=/usr/bin/google-chrome-stable
EDITOR=/usr/bin/code

# Go
export GOROOT=/usr/lib/go
export GOPATH=/$HOME/Dev/go

#
# Aliases
#

## Modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

## Safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

