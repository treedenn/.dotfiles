#!/bin/bash

mkdir -p usr/sbin

cp -r ~/.config/i3 .
cp -r ~/.config/nvim .
cp /usr/sbin/uni-sync.json usr/sbin
