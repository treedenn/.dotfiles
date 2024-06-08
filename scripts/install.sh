#!/bin/bash

#
# standard packages
#

## Applications

sudo pacman -S neovim
sudo pacman -S obsidian
sudo pacman -S tmux
sudo pacman -S zellij
sudo pacman -S github-cli

## Tools

sudo pacman -S zoxide
sudo pacman -S fzf
sudo pacman -S ripgrep
sudo pacman -S go delve # delve is DAP for go

## Fonts

sudo pacman -S ttf-cascadia-code-nerd
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S ttf-nerd-fonts-symbols-mono

#
# AUR packages
#

## Applications

yay -S brave-bin
yay -S spotify
yay -S bitwarden

## Tools

yay -S goxlr-utility
yay -S nnn
yay -S go-task-bin
yay -S zsh

#
# Plugins
#

## Z-shell plugin manager
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

#
# Symlinks
#

## Create a local symlink named task to go-task-bin executable
ln -s /usr/bin/go-task ~/.local/bin/task

#
# Git projects
#

## Uni-sync (for Lian Li fans)
mkdir ~/Applications
git clone https://github.com/EightB1ts/uni-sync.git ~/Applications

#
# Miscellaneous
#

## Install Github Copilot
gh extension install github/gh-copilot

## Version Manager
curl https://mise.run | sh
~/.local/bin/mise --version

## Keyboard layout (English, Danish, 104 keys)
localectl set-x11-keymap gb,dk pc104 "" grp:win_space_toggle
setxkbmap gb,dk pc104 "" grp:win_space_toggle
