#!/usr/bin/env bash

# Link vimrc to repo
ln -s ~/.vim/vimrc ~/.vimrc

# Install zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# Grab vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install all plugins
vim +PluginInstall +qall
