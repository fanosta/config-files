#!/bin/bash

if (! which sudo > /dev/null) then
    >&2 echo install sudo before using this script
    exit 1
fi

# update package lists
sudo apt-get update
# install packages
sudo apt-get install -y zsh tmux wget curl vim git mosh dnsutils software-properties-common python-software-properties xclip sl

#get the absolute current path (.)
WD=$(readlink -f .)
echo $WD

# link config files
rm ~/.zshrc
ln -s $WD/zshrc ~/.zshrc

rm ~/.tmux.conf
ln -s $WD/tmux.conf $HOME/.tmux.conf
ln -s $WD/warprc $HOME/.warprc
ln -s $WD/vimrc $HOME/.vimrc
sudo ln -s  $WD/tmx /bin/tmx

# install pathogen (vim plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install oh my zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s $(which zsh)

ssh-keygen -t 'ed25519'

$WD/change-hostname.sh
