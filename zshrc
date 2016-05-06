# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git golang ubuntu tmux mosh bgnotify ssh-agent sudo common-aliases wd)

# faster cd based on directory access "frecency"
. ~/config-files/z/z.sh

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
alias mktex='latexmk -pdf -pdflatex="texfot pdflatex -file-line-error -shell-escape %O %S" -interaction=nonstopmode -pvc'
alias pastebin='pastebin -p | xc'

alias myip='dig +short @resolver1.opendns.com myip.opendns.com'
function pw () {
        strings /dev/urandom | grep --color --color -o '[[:alnum:]]' | head -n ${1:-16} | tr -d '\n'
        echo
}
function maclookup() {                                                                                       
        curl http://www.macvendorlookup.com/api/v2/$1 2>/dev/null | python -m json.tool;
}

# attach to tmux
 tmx 0
