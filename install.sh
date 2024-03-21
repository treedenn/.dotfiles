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

# git clones
mkdir ~/Applications
git clone https://github.com/EightB1ts/uni-sync.git ~/Applications

