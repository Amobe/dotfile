#!/bin/bash

cp -r dotfile/vim/.vim   $HOME/.vim
cp dotfile/vim/.vimrc $HOME/.vimrc

sudo ln -s $HOME/.vimrc /root/.vimrc
sudo ln -s $HOME/.vim   /root/.vim
