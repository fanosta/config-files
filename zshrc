# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git ubuntu bgnotify ssh-agent common-aliases systemd)
DEFAULT_USER=marcel

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_GB.UTF-8
export SHELL="/usr/bin/zsh"
export EDITOR="vim"
export GOPATH="$HOME/Dropbox/Programmieren/Go"
export PATH=$PATH:$GOPATH/bin:/sbin:$HOME/.local/bin
export CDPATH='/home/marcel/Dropbox/tu/tor/:/home/marcel/Dropbox/tu/sem3/:/home/marcel/Dropbox/tu/sem2/:/home/marcel/Dropbox/tu/sem1/'
export MTR_OPTIONS='-y2'

# personal aliases
alias c='clear'
alias xc='xclip -selection clipboard'
alias mktex='latexmk -pdf -pdflatex="texfot pdflatex -file-line-error -shell-escape %O %S" -interaction=batchmode -pvc'
alias psgrep='ps aux | head -n 1; ps aux | grep -v grep | grep $1'
alias cdtmp='cd $(mktemp -d)'
alias gpg='gpg2'
alias w='source ~/config-files/watch.sh'
alias addr='ip addr show $((ip -6 route show | grep default | grep -oP "(?<=dev )\S*"; ip route show | grep default | grep -oP "(?<=dev )\S*") | sort | uniq)'

alias myip='dig +short @resolver1.opendns.com myip.opendns.com'
function pw () {
  cat /dev/urandom | tr -dc '[:alnum:]' | head -c 16;
  echo
}
function maclookup() {
  curl -s http://api.macvendors.com/$1;
  echo;
}

# change prompt to red color when logged in over SSH or as non default user
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment red black "%(!.%{%F{yellow}%}.)$USER@%m"
  fi
}

# attach to tmux
 tmx 0
