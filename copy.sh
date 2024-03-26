#!/bin/bash

DOTFILES=~/.dotfiles

mkdir -p usr/sbin

# folders
cp -r ~/.config/alacritty .config
cp -r ~/.config/i3 .config
cp -r ~/.config/rofi .config
cp -r ~/.config/nvim .config
cp -r ~/.screenlayout .

# files
cp ~/.profile .
cp ~/.bashrc .
cp ~/.zshrc .
cp ~/.zimrc .
cp ~/.config/spaceship.zsh .config

# uni-sync
cp /usr/sbin/uni-sync.json usr/sbin
