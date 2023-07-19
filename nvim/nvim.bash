#!/bin/bash

echo "configuring neovim"
sleep 1

sudo pacman -S neovim nerd-fonts yarn nodejs

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r ./nvim/ ~/.config/.
