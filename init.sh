#!/bin/bash

if (! which sudo > /dev/null) then
    >&2 echo install sudo before using this script
    exit 1
fi

#update package lists
#sudo apt-get update
#install packages
sudo apt-get install -y zsh tmux wget vim git mosh dnsutils software-properties-common python-software-properties

#install oh my zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#get the absolute current path (.)
WD=$(readlink -f .)

rm ~/.zshrc
ln -s $WD/zshrc ~/.zshrc

rm ~/.tmux.conf
ln -s $WD/tmux.conf ~/.tmux.conf
