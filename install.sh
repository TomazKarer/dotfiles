#!/bin/bash

ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf


ln -s -f ~/dotfiles/.inputrc ~/.inputrc
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile

mkdir ~/.config/nvim/lua -p
ln -s -f $(pwd)/neovim/init.vim ~/.config/nvim/init.vim
ln -s -f $(pwd)/neovim/lua/settings.lua ~/.config/nvim/lua/settings.lua
ln -s -f $(pwd)/neovim/lua/init.lua ~/.config/nvim/lua/init.lua
ln -s -f $(pwd)/neovim/lua/plugins.lua ~/.config/nvim/lua/plugins.lua

