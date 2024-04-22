#!/bin/bash

DOTFILES=~/.dotfiles

# folders

rsync --delete -r ~/.config/nvim ${DOTFILES}/.config/
rsync --delete -r ~/.config/alacritty ${DOTFILES}/.config/
rsync --delete -r ~/.config/i3 ${DOTFILES}/.config/
rsync --delete -r ~/.config/rofi ${DOTFILES}/.config/
rsync --delete -r ~/.screenlayout ${DOTFILES}/

# files
cp ~/.profile ${DOTFILES}/
cp ~/.bashrc ${DOTFILES}/
cp ~/.zshrc ${DOTFILES}/
cp ~/.zimrc ${DOTFILES}/
cp ~/.config/spaceship.zsh ${DOTFILES}/.config

# uni-sync
mkdir -p ${DOTFILES}/usr/sbin/
cp /usr/sbin/uni-sync.json ${DOTFILES}/usr/sbin/

