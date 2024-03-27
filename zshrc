# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
[[ -e /usr/share/zsh/manjaro-zsh-config ]] && source /usr/share/zsh/manjaro-zsh-config

# Use manjaro zsh prompt
[[ -e /usr/share/zsh/manjaro-zsh-prompt ]] && source /usr/share/zsh/manjaro-zsh-prompt

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# MyFunctions
function mkd() {
    if [ ! -d "$1" ];
    then
        mkdir "$1" && cd "$1";
    else
        echo "$1 already exists.";
        cd "$1";
    fi;
}

# aliases new place:
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

bindkey -v

export EDITOR=`which vim`
# Kris recommends - https://www.youtube.com/watch?v=MItgvIdgNwg
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x' edit-command-line

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.bin/news:$PATH"
export PATH="$HOME/.bin/calend:$PATH"
export PATH="$HOME/.bin/sys_info:$PATH"
export PATH="$HOME/.bin/dict:$PATH"
export PATH="$HOME/.bin/menues:$PATH"
export PATH="$HOME/.bin/music:$PATH"
export PATH="$HOME/.bin/search:$PATH"
export PATH="$HOME/.bin/calend/todoCLI:$PATH"
export PATH="$HOME/.bin/weather:$PATH"
export PATH="$HOME/.bin/utils:$PATH"
export PATH="$HOME/.bin/VOA:$PATH"

# Color man pages (if it uses less)
export LESS_TERMCAP_mb=$'\e[6m'          # begin blinking
export LESS_TERMCAP_md=$'\e[34m'         # begin bold
export LESS_TERMCAP_us=$'\e[4;32m'       # begin underline
export LESS_TERMCAP_so=$'\e[1;33;41m'    # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'           # end mode
export LESS_TERMCAP_ue=$'\e[m'           # end underline
export LESS_TERMCAP_se=$'\e[m'           # end standout-mode
