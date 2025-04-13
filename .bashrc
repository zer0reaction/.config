#
# ~/.bashrc
#

# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls -lah --color=auto"
alias grep="grep --color=auto"

alias todo="vim ~/TODO.md"
alias sandbox="mkdir -p /tmp/sandbox && cd /tmp/sandbox"
alias clear-sandbox="rm -rf /tmp/sandbox/*"

export EDITOR=vim
source ~/Programming/.venv/bin/activate

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s globstar

PROMPT_COMMAND=prompt_command

prompt_command() {
    local EXIT="$?"
    PS1=""

    local End="\[\e[0m\]"
    local Red="\[\e[0;31m\]"
    local Green="\[\e[0;32m\]"
    local Magenta="\[\e[0;35m\]"

    PS1="┌─${Magenta}[${End}\t${Magenta}]${End}-${Magenta}[${End}\u@\h${Magenta}]${End}-${Magenta}[${End}\w${Magenta}]${End}\n└─ $ ";

    if [ $EXIT != 0 ]; then
        PS1+="${Red}[${EXIT}]${End} "
    fi
}
