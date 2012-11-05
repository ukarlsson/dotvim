#!/bin/sh

ln -s $HOME/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.vim/gvimrc $HOME/.gvimrc
cd $HOME/.vim

git submodule init
git submodule update
