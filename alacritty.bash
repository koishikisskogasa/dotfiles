#!/bin/bash

echo "configuring alacritty"
sleep 1

sudo pacman -S alacritty

cp -r alacritty/ /home/adji/.config/.
