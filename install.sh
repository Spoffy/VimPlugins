#!/bin/bash

echo -e "\e[31mCloning Vundle\e[0m" &&
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

if [ ! -h ~/.vimrc ]; then
    echo -e "\e[31mSymlinking ~/.vimrc to ~/.vim/vimrc\e[0m" &&
    ln -s ~/.vim/vimrc ~/.vimrc
fi

echo -e "\e[31mInstalling Bundles\e[0m" &&
vim +PluginInstall +qall &&
echo -e "\e[31mBundles installation complete (probably)!\e[0m"

echo -e "\e[31mBuilding YouCompleteMe[\0m" &&
cd bundle/YouCompleteme
./install.sh
cd ../..
