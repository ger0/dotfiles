autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias v=vim
alias t=tmux
alias ls='ls --color=auto'

function cs () {
    cd "$@" && ls
    }
    
export PATH=$PATH:~/.scripts/  
