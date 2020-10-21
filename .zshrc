autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias v=nvim
alias t=tmux
alias ls='ls --color=auto'

function cs () 
    {
    cd "$@" && ls
    }

eval $(dircolors -b .dir_colors)
export PATH=$PATH:~/.scripts/  
export EDITOR=nvim
export VISUAL=nvim
export PROMPT="%B%F{4}%n %F{11}%~ %f>%b "
export PATH=$HOME/bin:$PATH
