#!/bin/bash

git_check=`which git | wc -l`
if [ $git_check -gt 0 ]
then
    echo "Package git is installed."
    echo "Download tmuxifier."
    git clone https://github.com/jimeh/tmuxifier $HOME/.tmuxifier
    sudo echo "export PATH=\"$HOME/.tmuxifier/bin:\$PATH\"" | sudo tee -a /etc/bash.bashrc
    sudo echo "export TMUXIFIER_TMUX_OPTS=\"-2\"" | sudo tee -a /etc/bash.bashrc
else
    echo "Package git is not install."
fi

sudo echo "export TERM=\"screen-256color\"" | sudo tee -a /etc/bash.bashrc
sudo echo "eval \"\$(tmuxifier init -)\"" | sudo tee -a /etc/bash.bashrc
sudo echo "alias tmux=\"tmux -2\"" | sudo tee -a /etc/bash.bashrc

cp .tmux.conf $HOME/.tmux.conf
sudo ln -s $HOME/.tmux.conf /root/.tmux.conf
