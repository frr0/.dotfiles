#!/bin/sh

mkdir .dotfiles
cd .dotfiles

git clone git@github.com:frr0/Dotfiles.git

cd Dotfiles

cp zsh/.zshrc ~
rm zsh/.zshrc
ln ~/.zshrc ~/.dotfiles/Dotfiles/zsh
cp vim/.vimrc ~
rm zsh/.vimrc
ln ~/.vimrc ~/.dotfiles/Dotfiles/vim
cp tmux/.tmux.conf ~
rm tmux/.tmux.conf
ln ~/.tmux ~/.dotfiles/Dotfiles/tmux
