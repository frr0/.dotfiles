#!/bin/sh

echo "Remember: All your current dotfiles are going to be saved <dot>_OLD so that you won't lose them!"
sleep 2

echo "Do you want to install all the programs? [y][n]"
read a

#echo "Which OS/Distro are you on?"
#echo "[1] = Fedora"
#echo "[n/a] = to be implemented..."
#read d

echo "Do you want to replace your nvim config? [y][n]"
read b

if [[ $b -eq "y" ]]; then

  cd ~/.config/nvim/
  mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

  cd ~

fi

if [[ $a -eq "y" ]]; then

  cd ~
  sudo dnf install zsh tmux vim i3 kitty neovim polybar rofi ranger
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg 
  printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
  sudo dnf install codium

fi


cd ~
git clone git@github.com:frr0/Dotfiles.git

cd ~

#~ home

mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/
mv .zshrc .zshrc_OLD && mv ~/.dotfiles/zsh/.zshrc ~/.zshrc && ln .zshrc ~/.dotfiles/zsh/
mv .tmux.conf .tmux.conf_OLD && mv ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf && ln .tmux.conf ~/.dotfiles/tmux/
mv .vimrc .vimrc_OLD && mv ~/.dotfiles/vim/.vimrc ~/.vimrc && ln .vimrc ~/.dotfiles/vim/

#.config

cd ~/.config/i3/
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

cd ~/.config/kitty/
mv kitty.conf kitty.conf_OLD && mv ~/.dotfiles/kitty/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/kitty/

cd ~/.config/Codium/
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

# required for vscodium nvim plugin

cd ~
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cd ~/.config/polybar/
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

cd ~/.config/rofi/
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

cd ~/.config/ranger/
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

#Projects

cd ~/Projects/Project_create
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/

#Scripts

cd .local/bin/scripts
mv .bashrc .bashrc_OLD && mv ~/.dotfiles/bash/.bashrc ~/.bashrc && ln .bashrc ~/.dotfiles/bash/
