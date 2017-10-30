#!/bin/bash

VERSION=2.6
PREFIX=${HOME}/usr
SRC=${PREFIX}/src

echo "this script will install tmux into ${PREFIX}"
mkdir ${PREFIX}
mkdir ${SRC}

TMUX_CHECK=$(which tmux | wc -l)

if [ $TMUX_CHECK -gt 0 ]
then
  echo "tmux already installed"
  exit 1
fi

echo "install necessary packages"
sudo apt-get -y install wget tar libevent-dev libncurses-dev gcc make

echo "compile from source"
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure --prefix=${PREFIX}
make
make install
cd -
mv tmux-${VERSION} ${SRC}

BIN_CHECK=$(echo $PATH | grep /home/lexamo/usr/bin | wc -l)
if [ $BIN_CHECK -lt 1 ]
then
  echo 'export PATH='${PREFIX}'/bin:$PATH' | tee -a $HOME/.bashrc
  echo '' | tee -a $HOME/.bashrc 
fi

TMUX_CHECK=$(${PREFIX}/bin/tmux -V | wc -l)
if [ $TMUX_CHECK -gt 0 ]
then
  echo "tmux install successfully"
else
  echo "tmux install fail"
fi

