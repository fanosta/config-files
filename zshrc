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

export PATH=$PATH:$GOPATH:/home/marcel/Android/Sdk/platform-tools
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:$GOPATH/bin:/sbin

# personal aliases
alias c='clear'
alias xc='xclip -selection clipboard'

fulltex () {
        pdflatex -halt-on-error -shell-escape $1 &&
        biber $1 &&
        pdflatex -halt-on-error -shell-escape $1 &&
        pdflatex -halt-on-error -shell-escape $1
}

# attach to tmux
 tmx 0
