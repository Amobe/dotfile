#!/bin/bash

ROOT_UID="0"
#check if run as root
if [ "$UID" -ne "$ROOT_UID" ]; then
	echo "You must be root to do that!"
	exit 1
fi

sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y fish
