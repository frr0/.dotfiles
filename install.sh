#!/bin/sh

#set a ssh key if you use this in a new pc before running it!!!

cd ~
git clone git@github.com:frr0/.dotfiles.git

# Folders in .config

# nvim
if [ -d ~/.config/nvim ]; then
  mv ~/.config/nvim ~/.config/nvim && git clone git@github.com:frr0/nvim.git
else
  git clone git@github.com:frr0/nvim.git
fi

# sway
if [ -d ~/.config/sway ]; then
  mv ~/.config/sway ~/.config/sway_OLD && mkdir ~/.config/sway && ln ~/.dotfiles/sway/* ~/.config/sway/
else
  mkdir ~/.config/sway && ln ~/.dotfiles/sway/* ~/.config/sway/
fi

# waybar
if [ -d ~/.config/waybar ]; then
  mv ~/.config/waybar ~/.config/waybar_OLD && mkdir ~/.config/waybar && ln ~/.dotfiles/waybar/* ~/.config/waybar/
else
  mkdir ~/.config/waybar && ln ~/.dotfiles/waybar/* ~/.config/waybar/
fi

# wofi
if [ -d ~/.config/wofi ]; then
  mv ~/.config/wofi ~/.config/wofi_OLD && mkdir ~/.config/wofi && ln ~/.dotfiles/wofi/* ~/.config/wofi/
else
  mkdir ~/.config/wofi && ln ~/.dotfiles/wofi/* ~/.config/wofi/
fi

# kitty
if [ -d ~/.config/kitty ]; then
  mv ~/.config/kitty ~/.config/kitty_OLD && mkdir ~/.config/kitty && ln ~/.dotfiles/kitty/* ~/.config/kitty/
else
  mkdir ~/.config/kitty && ln ~/.dotfiles/kitty/* ~/.config/kitty/
fi

# fish
if [ -d ~/.config/fish ]; then
  mv ~/.config/fish ~/.config/fish_OLD && mkdir ~/.config/fish && ln ~/.dotfiles/fish/* ~/.config/fish/
else
  mkdir ~/.config/fish && ln ~/.dotfiles/fish/* ~/.config/fish/
fi

# ranger
if [ -d ~/.config/ranger ]; then
  mv ~/.config/ranger ~/.config/ranger_OLD && mkdir ~/.config/ranger && ln ~/.dotfiles/ranger/* ~/.config/ranger/
else
  mkdir ~/.config/ranger && ln ~/.dotfiles/ranger/* ~/.config/ranger/
fi

# nvim-codium
if [ -d ~/.config/nvim-codium ]; then
  mv ~/.config/nvim-codium ~/.config/nvim-codium_OLD && git clone git@github.com:frr0/nvim-vscodium.git
else
  git clone git@github.com:frr0/nvim-vscodium.git
fi

# idea
if [ -d ~/.config/Vim-Idea ]; then
  mv ~/.config/Vim-Idea ~/.config/Vim-Idea_OLD && git clone git@github.com:MyPC-dotfiles/Vim-Idea.git
else
  git clone git@github.com:MyPC-dotfiles/Vim-Idea.git
fi

# Files in ~

# vim
if [ -e ~/.vimrc ]; then
  mv .vimrc .vimrc_OLD && ln ~/.dotfiles/vim/.vimrc ~
else
  ln ~/.dotfiles/vim/.vimrc ~
fi

# ideavim
if [ -e ~/.ideavimrc ]; then
  mv .ideavimrc .ideavimrc_OLD && ln ~/.dotfiles/idea/.ideavimrc ~
else
  ln ~/.dotfiles/idea/.ideavimrc ~
fi

# tmux
if [ -e ~/.tmux.conf ]; then
  mv .tmux.conf .tmux.conf_OLD && ln ~/.dotfiles/tmux/.tmux.conf ~
else
  ln ~/.dotfiles/tmux/.tmux.conf ~
fi

# git projects

cd ~
mkdir projects
cd projects

git clone git@github.com:frr0/Project_create.git

# install program for my rice

cd ~
sudo dnf install neovim python fzf ranger valgrind pandoc firefox telegram-desktop thunderbird xournalpp vlc zathura polybar wofi sway waybar wlr-randr brightnessctl swaylock pavucontrol wl-copy nemo
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg 
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium

# fish fzf
cd ~
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/fzf
