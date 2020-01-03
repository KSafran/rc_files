#!/bin/bash
sudo apt update
sudo apt install git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -i NONE -c VundleUpdate -c quitall
