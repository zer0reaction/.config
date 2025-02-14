#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias rm="echo 'Using rm is dangerous'"

PROMPT_COMMAND=prompt_command

prompt_command() {
    local EXIT="$?"
    PS1=""

    local End='\[\e[0m\]'
    local Red='\[\e[0;31m\]'
    local Green='\[\e[0;32m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}[${EXIT}]${End} \W ${Red}>${End} "
    else
        PS1+="\w ${Green}>${End} "
    fi

}
