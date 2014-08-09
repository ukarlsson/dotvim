#!/bin/sh

ln -s $HOME/.vim/vimrc $HOME/.vimrc
cd $HOME/.vim

git submodule init
git submodule update
