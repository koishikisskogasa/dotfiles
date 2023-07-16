#!/bin/bash

echo "configuring neovim"
sleep 1

sudo pacman -S nvim nerd-fonts

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir /home/adji/.config

cp -r nvim/ /home/adji/.config/.
