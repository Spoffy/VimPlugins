#!/bin/bash

echo -e "\e[31mCloning Vundle\e[0m" &&
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo -e "\e[31mInstalling Bundles\e[0m" &&
vim +PluginInstall +qall &&
echo -e "\e[31mBundles installation complete (probably)!\e[0m"

if [ ! -h ~/.vimrc ]; then
    ln -s ~/.vim/vimrc ~/.vimrc
fi

if [ -a ~/.vim/pre_install_vimrc ]; then
    mv ~/.vim/pre_install_vimrc ~/.vim/vimrc
fi
