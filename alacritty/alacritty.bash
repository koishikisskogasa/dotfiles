#!/bin/bash

echo "configuring alacritty"
sleep 1

sudo pacman -S alacritty ttf-fira-code

cp -r ./alacritty/ ~/.config/.
