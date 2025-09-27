#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Run neofetch on terminal startup
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi

alias clear='clear && fastfetch'

PS1="\[\e[1;3;36m\][\t]\[\e[0m\] \[\e[1;31m\]Lily <3\[\e[0m\]\[\e[1;37m\]~\[\e[0m\] "

