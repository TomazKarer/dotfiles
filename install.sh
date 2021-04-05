#!/bin/bash

ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf


ln -s -f ~/dotfiles/.inputrc ~/.inputrc
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile
