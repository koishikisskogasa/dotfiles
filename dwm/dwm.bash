#!/bin/bash

sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot nitrogen

cp ./dwm/.xinitrc ~/.
cp ./dwm/bar.bash ~/dwm/.

wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz
wget https://dl.suckless.org/tools/dmenu-5.2.tar.gz

tar -xvf dwm-6.4.tar.gz
tar -xvf dmenu-5.2.tar.gz

mv ./dwm-6.4 ./dwm
mv ./dmenu-5.2 ./dmenu

mv ./dwm ~/.
mv ./dmenu ~/.
