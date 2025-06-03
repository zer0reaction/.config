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

export PS1="[\u@\h \W]\$ "
export EDITOR=vim

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s globstar
