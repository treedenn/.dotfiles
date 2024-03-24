#!/bin/bash

# standard packages

sudo pacman -S neovim
sudo pacman -S obsidian
sudo pacman -S zoxide
sudo pacman -S ripgrep
sudo pacman -S ttf-cascadia-code-nerd
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S ttf-nerd-fonts-symbols-mono

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

curl https://mise.run | sh
~/.local/bin/mise --version

