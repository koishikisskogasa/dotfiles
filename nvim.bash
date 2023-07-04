#!/bin/bash

echo "configuring neovim"
sleep 1

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir /home/adji/.config

cp -r nvim/ /home/adji/.config/.
