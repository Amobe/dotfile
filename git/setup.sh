#!/bin/bash

git config --global color.ui true

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.df diff

git config --global alias.lo 'log --oneline'
git config --global alias.last 'log -1 HEAD'

git config --global diff.algorithm histogram

git config --global alias.tr 'log --graph --abbrev-commit --decorate --date=relative --format=format:'"'"'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"'"' --all'
git config --global alias.tr2 'log --graph --abbrev-commit --decorate --format=format:'"'"'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'"'"''"'"'          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"'"' --all'

