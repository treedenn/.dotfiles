#!/bin/bash

DOTFILES=~/.dotfiles

# folders

rsync --delete -r ~/.config/nvim .config
rsync --delete -r ~/.config/alacritty .config
rsync --delete -r ~/.config/i3 .config
rsync --delete -r ~/.config/rofi .config
rsync --delete -r ~/.screenlayout .

# files
cp ~/.profile .
cp ~/.bashrc .
cp ~/.zshrc .
cp ~/.zimrc .
cp ~/.config/spaceship.zsh .config

# uni-sync
mkdir -p usr/sbin
cp /usr/sbin/uni-sync.json usr/sbin

