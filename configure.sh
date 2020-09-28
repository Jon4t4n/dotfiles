#!/bin/bash

rm -f ~/.gitconfig
rm -f ~/.vimrc
rm -f ~/.zshrc

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
