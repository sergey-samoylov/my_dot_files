#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias r='ranger'
alias n='newsboat'
alias c='clear'
alias mydate='date +%A,\ %B%e'
alias upd='sudo pacman -Syu'


purple=$(tput setaf 129);
blue=$(tput setaf 27);
green=$(tput setaf 71);
olive=$(tput setaf 149);
yellow=$(tput setaf 227);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}${olive}\]\\[\$(date +%H:%M)\] \[${bold}${green}\]\$PWD";
PS1+="\n";
PS1+="\[${white}\]> \[${reset}\]";
export PS1;
