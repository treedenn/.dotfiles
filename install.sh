#!/bin/bash

# standard packages

sudo pacman -S neovim
sudo pacman -S zoxide
sudo pacman -S ripgrep

# AUR packages
yay -S goxlr-utility
yay -S spotify
yay -S nnn
yay -S brave-bin
yay -S zsh
yay -S bitwarden

# git clones
mkdir ~/Applications
git clone https://github.com/EightB1ts/uni-sync.git ~/Applications

# install zsh plugin manager
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install node
