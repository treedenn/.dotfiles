#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

eval "$(~/.local/bin/mise activate bash)"
