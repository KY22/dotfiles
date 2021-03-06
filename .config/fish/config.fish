#
# Fish specific
#

# Quite!
set fish_greeting ""

if test -x /usr/bin/dircolors -a -e ~/.dircolorsrc 
    eval (dircolors -c ~/.dircolorsrc | sed 's/>&\/dev\/null$//')
end

#
# Environment
#

# Config directory
set -gx XDG_CONFIG_HOME $HOME/.config

# Go
set -gx GOROOT /usr/lib/go
set -gx GOPATH $HOME/Dev/go

# PATH
set -gx PATH $HOME/.local/bin $GOPATH/bin/ $PATH

#
# Aliases
#

## Directories
alias dropd "cd $GOPATH/src/dropd.com"

## Modified commands
alias diff "colordiff"
alias grep "grep --color=auto"
alias more "less"
alias df "df -h"
alias du "du -c -h"
alias mkdir "mkdir -p -v"
alias nano "nano -w"
alias ping "ping -c 5"
alias dmesg "dmesg -HL"
alias ccat "pygmentize -g"

## ls
alias ls "ls -hF --color=auto"
alias lr "ls -R"                    # recursive ls
alias ll "ls -l"
alias la "ll -A"
alias lx "ll -BX"                   # sort by extension
alias lz "ll -rS"                   # sort by size
alias lt "ll -rt"                   # sort by date
alias lm "la | more"

## Pacman
alias pru "sudo pacman -Rns (pacman -Qtdq)"

## Safety features
alias cp "cp -i"
alias mv "mv -i"
alias rm "rm -I"                    # 'rm -i' prompts for every file
alias ln "ln -i"
alias chown "chown --preserve-root"
alias chmod "chmod --preserve-root"
alias chgrp "chgrp --preserve-root"
