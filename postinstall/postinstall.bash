#!/bin/bash

set -e

pacman -S base-devel neovim grub efibootmgr networkmanager amd-ucode

systemctl enable NetworkManaager

echo "en_US.UTF-8" > /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
locale-gen

ln -s /usr/share/zoneinfo/Asia/Kuching /etc/localtime
hwclock --systohc

echo "arch" > /etc/hostname
cp ./hosts.txt > /etc/hosts

echo "setting root password"
passwd

echo "setting user password"
useradd -mG wheel user
passwd user

EDITOR=nvim visudo

grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg

exit
