#!/bin/bash

git_check=`which git | wc -l`
if [ $git_check -gt 0 ]
then
    echo "Package git is installed."
    echo "Download tmuxifier."
    git clone https://github.com/jimeh/tmuxifier $HOME/.tmuxifier
    echo "export PATH=\"$HOME/.tmuxifier/bin:\$PATH\"" | tee -a $HOME/.bashrc
    echo "export TMUXIFIER_TMUX_OPTS=\"-2\"" | tee -a $HOME/.bashrc
else
    echo "Package git is not install."
fi

echo "export TERM=\"screen-256color\"" | tee -a $HOME/.bashrc
echo "eval \"\$(tmuxifier init -)\"" | tee -a $HOME/.bashrc
echo "alias tmux=\"tmux -2\"" | tee -a $HOME/.bashrc

cp .tmux.conf $HOME/.tmux.conf
