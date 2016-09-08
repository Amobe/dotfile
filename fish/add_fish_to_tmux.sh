#!/bin/bash

TMUX_CONF_PATH="$HOME/.tmux.conf"

FISH_CHECK=`which fish | wc -l`
TMUX_CHECK=`which tmux | wc -l`
TMUX_CONF_CHECK=`ls $TMUX_CONF_PATH | wc -l`

if [ $FISH_CHECK -ne 1 ]; then
	echo "You must install fish shell."
	exit 1
fi

if [ $TMUX_CHECK -ne 1 ]; then
	echo "You must install tmux."
	exit 1
fi

if [ $TMUX_CONF_CHECK -ne 1 ]; then
	echo "Create conf file of tmux at, $TMUX_CONF_PATH"
	touch $TMUX_CONF_PATH
fi

echo ""  | tee -a $TMUX_CONF_PATH
echo "# fish shell" | tee -a $TMUX_CONF_PATH
echo "set-option -g default-shell $(which fish)" | tee -a $TMUX_CONF_PATH
echo ""  | tee -a $TMUX_CONF_PATH
