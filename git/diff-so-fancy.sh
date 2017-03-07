#!/bin/bash

# check npm
if ! which npm >/dev/null; then
    echo 'Error: npm is not installed.'
    exit 1
fi

# install diff-so-fancy
npm install -g diff-so-fancy

# git setting
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

