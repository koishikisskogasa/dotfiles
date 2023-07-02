#!/bin/bash

clear

echo "created by @miomaowastaken on github bla bla yes."
sleep 1

pacman -S \
    wget curl xclip networkmanager parted dosfstools grub efibootmgr noto-fonts ttf-fira-code \
    xf86-video-amdgpu vulkan-radeon \
    hyprland firefox alacritty \
    pipewire pipewire-pulse wireplumber firefox alacritty \

systemctl enable NetworkManager

echo "WARNING EFI DIRECTORY HAVE TO BE /boot"
sleep 1
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg

echo "enter your ROOT password"
passwd

echo "the user was adji because it was my files stfu, enter the pswd for the user btw"
useradd -mG wheel adji
passwd adji

EDITOR=nvim visudo

reboot
