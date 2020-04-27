#!/bin/bash

rm -f ~/.gitconfig
rm -f ~/.vimrc

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
