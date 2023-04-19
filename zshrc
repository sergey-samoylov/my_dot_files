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


# Start aliases
alias ..='cd ..'
alias клмнр='sdn'
alias book='~/.bin/book.sh'
alias c='clear'
alias daysyear='python -c "import datetime;print((datetime.date(2023,12,31)-datetime.date.today()).days)"'
alias ducky='w3m duckduckgo.org'
alias db_query='~/.bin/db_query.py'
alias docker_clean='docker stop $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker volume rm $(docker volume ls -q) && docker system prune && docker system df'
alias fv='~/.bin/fv.sh'
alias git3='git add . && git commit -m "GIT3inONEscript $(\date)" && git push'
alias goo='~/.bin/goo.sh'
alias gooru='~/.bin/gooru.sh'
alias gradio='mpv gopher://bitreich.org/9/radio/listen'
alias hf='history -100 |fzf'
alias l='ls -CF'
alias la='ls -a'
alias ll='ls -alF'
alias ls='exa -1 --group-directories-first'
alias lt='exa -aT'
alias l.='exa -a1 $* | grep "^\."'
alias ды='exa -1 --icons --group-directories-first'
alias knu='~/.bin/kitty_new_user.sh' # expects username and pass as args after knu command
alias mgr='python manage.py makemigrations && python manage.py migrate'
alias mpf='cd ~/Videos && mpv "$(fzf)"'
alias mpy='mpv  "$(xclip -o -selection clipboard)"'
alias myip='set -- $(ip -br -c addr | grep w) && echo $3'
# alias n='newsboat -x reload && newsboat'
alias n='newsboat'
alias nastavnik='~/.bin/who_is_nastavnik.sh'
alias notes='~/.bin/notes.sh'
alias open='xdg-open'
alias p='ipython'
alias python='python3'
alias pf="fzf --preview='bat --color=always --style=plain {}' --bind k:preview-up,j:preview-down"
alias pipupd='pip install --upgrade pip'
alias q='exit'
alias r='ranger'
alias к='ranger'
alias sdn='shutdown -h now'
alias server='python manage.py runserver'
alias sprint5='cd ~/Dev/hw04_tests/ && source venv/bin/activate && python -V && cd yatube/'
alias sprint6='cd ~/Dev/hw05_final/ && source venv/bin/activate && python -V && cd yatube/'
alias sprint7='cd ~/Dev/homework_bot/ && python -V'
alias sprint8='cd ~/Dev/kittygram_plus/ && python -V'
alias sprint9='cd ~/Dev/api_final_yatube/ && python -V'
alias sprint10='cd ~/Dev/api_yamdb/ && source venv/bin/activate && python -V && cd api_yamdb/'
alias sprint17='cd ~/Dev/foodgram-project-react/ && source venv/bin/activate && python -V && cd backend/'
alias sqf='sqlite3 "$(fzf --prompt "Please select a database: ")"'
alias testsYT='~/.bin/testsYaTube.sh'
alias today='\date +"Today: %B %d, %Y"'
alias date='date +"%t%R %n%t%A %n%t%d %B"'
alias upd='sudo pacman -Syu'
alias venv='python3.7 -m venv venv'
alias venva='source venv/bin/activate'
alias venvd='deactivate'
alias vf='vim "$(fzf --preview="bat --color=always --style=plain {}" --bind K:preview-up,J:preview-down --prompt "Please select a file to edit: ")"'
alias voa='~/.bin/voaMain.sh'
alias weather="curl 'http://wttr.in/{Korolev,Kislovodsk,Plymouth}?format=4'"
alias youtube-dl='noglob youtube-dl'
# End aliases

export EDITOR=`which vim`

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
source /usr/share/nvm/init-nvm.sh
