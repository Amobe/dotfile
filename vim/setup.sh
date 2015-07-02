#!/bin/bash

cp -r .vim   $HOME/.vim
cp    .vimrc $HOME/.vimrc

sudo ln -s $HOME/.vimrc /root/.vimrc
sudo ln -s $HOME/.vim   /root/.vim
