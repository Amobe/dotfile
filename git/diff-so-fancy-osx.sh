#!/bin/bash

# check brew
if ! which brew >/dev/null; then
    echo 'Error: brew is not installed.'
    exit 1
fi

# install diff-so-fancy
brew install diff-so-fancy

# git setting
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

