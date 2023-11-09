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
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

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

# Start aliases
alias Алиса,='~/.bin/search/clisa.sh'
alias поиск='~/.bin/search/analitics_dict.py'
alias ..='cd ..'
alias news='interfax && rian'
alias клмнр='sdn'
alias book='~/.bin/book.sh'
alias rpissh="ssh sam@192.168.31.168" # standard pass
alias rpifile="sshfs sam@192.168.31.168: ~/Dev/cloud"
alias c='clear'
alias daysyear='python -c "import datetime;print((datetime.date(2023,12,31)-datetime.date.today()).days)"'
alias ducky='w3m duckduckgo.org'
alias db_query='~/.bin/db_query.py'
alias docker_clean='docker stop $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker volume rm $(docker volume ls -q) && docker system prune && docker system df'
alias email='cd ~/Dev/YandexEmail && venva && python email_sender.py && venvd && cd'
alias fv='~/.bin/fv.sh'
alias git3='git add . && git commit -m "GIT3inONEscript $(\date)" && git push'
alias gb='cd ~/.bin'
alias gd='cd ~/Dev'
alias gm='cd ~/Music'
alias gv='cd ~/Videos'
alias gt='cd ~/tmp'
alias goo='~/.bin/search/goo.sh'
alias gooru='~/.bin/search/gooru.sh'
alias gradio='mpv gopher://bitreich.org/9/radio/listen'
alias h='tldr $1'
alias hf='history -100 |fzf'
alias l='ls -CF'
alias la='ls -a'
alias ll='ls -alF'
alias ls='ls -1 --color --group-directories-first'
alias lt='exa -aT'
alias l.='exa -a1 $* | grep "^\."'
alias ды='exa -1 --icons --group-directories-first'
alias knu='~/.bin/kitty_new_user.sh' # expects username and pass as args after knu command
alias mgr='python manage.py makemigrations && python manage.py migrate'
alias mpf='cd ~/Videos && mpv "$(fzf)"'
alias mpy='mpv  "$(xclip -o -selection clipboard)"'
alias mydate='date +%A,\ %B%e'
alias myip='set -- $(ip -br -c addr | grep w) && echo $3'
alias mysql='docker start fervent_nash && docker exec -it fervent_nash mysql -uroot -pjason4684'
# alias n='newsboat -x reload && newsboat'
alias n='newsboat'
alias nastavnik='~/.bin/who_is_nastavnik.sh'
alias notes='~/.bin/notes.sh'
alias open='xdg-open'
alias p='ipython'
alias python='python3'
alias pf="fzf --preview='bat --color=always --style=plain {}' --bind k:preview-up,j:preview-down"
alias pipupd='pip install --upgrade pip'
alias погода='cd ~/Dev/WEATHER/weather/ && venva && python weather_app.py && venvd && cd'
alias q='exit'
alias r='ranger'
alias к='ranger'
alias radio='~/.bin/search/radio.sh'
alias sa='select_articles.sh'
alias sdn='shutdown -h now'
alias server='python manage.py runserver'
alias sn='search_notes.sh' # search my personal notes
alias sqf='sqlite3 "$(fzf --prompt "Please select a database: ")"'
alias testsYT='~/.bin/testsYaTube.sh'
alias today='\date +"Today: %B %d, %Y"'
alias todo='cd ~/.bin/calend/todoCLI && todocli.py show && cd -'
alias todo_pandas='cd ~/.bin/calend/ && read_pandas.py'
alias date_pretty='date +"%t%R %n%t%A %n%t%d %B"'
alias upd='sudo pacman -Syu && sudo journalctl --vacuum-time=2weeks && rm -rf /home/sam/.cache/*' # https://www.youtube.com/watch?v=wwSkFi3h2nI
alias venv='python3 -m venv venv'
alias venva='source venv/bin/activate'
alias venvd='deactivate'
alias v='vim'
alias vf='vim "$(fzf --preview="bat --color=always --style=plain {}" --bind K:preview-up,J:preview-down --prompt "Please select a file to edit: ")"'
alias voa='~/.bin/voaMain.sh'
alias weather="curl 'http://wttr.in/{Korolev,Kislovodsk,Plymouth}?format=4'"
alias youtube-dl='noglob youtube-dl'
alias yt='yt && clear'
alias yv='select_youtube_video.sh'
alias tsm='transmission-remote' #tsm -a 'add magnet link'; tsm -l == current downloads; tsm -t ...(num of torrent) --remove
				#localhost:9091 - tsm download visualization
				#
#LETTERS
alias yura='/home/sam/.bin/letter2yura.sh'
alias anya='/home/sam/.bin/letter2anya.sh'
# End aliases

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
