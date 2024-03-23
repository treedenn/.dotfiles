#!/bin/bash

DIRECTORY=~/.dotfiles

mkdir -p usr/sbin

# folders
cp -r ~/.config/i3 .config
cp -r ~/.config/nvim .config
cp -r ~/.screenlayout .

# files
cp ~/.bashrc .
cp ~/.zshrc .
cp ~/.zimrc .

# uni-sync
cp /usr/sbin/uni-sync.json usr/sbin
