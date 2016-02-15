# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git golang ubuntu tmux mosh bgnotify ssh-agent sudo common-aliases wd)

# User configuration
ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOQUIT=true

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_GB.UTF-8
export SHELL="/usr/bin/zsh"
export EDITOR="vim"
export GOPATH="$HOME/Dropbox/Programmieren/Go"
export PATH=$PATH:$GOPATH/bin:/sbin:$HOME/.local/bin

# personal aliases
alias c='clear'
alias xc='xclip -selection clipboard'
alias acshow='apt-cache show'
alias mktex='latexmk -pdf -pdflatex="pdflatex -shell-escape %O %S" --interaction=batchmode -pvc'
alias pastebin='pastebin -p | xc'

# attach to tmux
 tmx 0
