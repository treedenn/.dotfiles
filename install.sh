#!/bin/bash

# standard packages

sudo pacman -S neovim
sudo pacman -S obsidian
sudo pacman -S zoxide
sudo pacman -S fzf
sudo pacman -S ripgrep
sudo pacman -S ttf-cascadia-code-nerd
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S ttf-nerd-fonts-symbols-mono
sudo pacman -S tmux

# AUR packages
yay -S goxlr-utility
yay -S spotify
yay -S nnn
yay -S brave-bin
yay -S zsh
yay -S bitwarden
yay -S go-task-bin

# Symlinks
## Create a local symlink named task to go-task-bin executable
ln -s /usr/bin/go-task ~/.local/bin/task

# git clones
mkdir ~/Applications
git clone https://github.com/EightB1ts/uni-sync.git ~/Applications

# install zsh plugin manager
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

curl https://mise.run | sh
~/.local/bin/mise --version

# keyboard layout
localectl set-x11-keymap gb,dk pc104 "" grp:win_space_toggle
setxkbmap gb,dk pc104 "" grp:win_space_toggle
