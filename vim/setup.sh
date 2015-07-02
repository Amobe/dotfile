#!/bin/bash

cp dotfile/vim/.vim   /home/vagrant/.vim
cp dotfile/vim/.vimrc /home/vagrant/.vimrc

sudo ln -s /home/vagrant/.vimrc /root/.vimrc
sudo ln -s /home/vagrant/.vim   /root/.vim
