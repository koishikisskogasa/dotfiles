#!/bin/bash

clear

echo "created by @miomaowastaken on github bla bla yes."
sleep 1

echo "configuring locale..."
sleep 1
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "setting up keyboard layout..."
sleep 1
echo "KEYMAP=dvorak" > /etc/vconsole.conf

echo "setting up host and hosts..."
sleep 1
echo "arch" > /etc/hostname
cat << EOF > /etc/hosts
# Static table lookup for hostnames.
# See hosts(5) for details.
127.0.0.1	localhost
::1		localhost
127.0.1.1	arch.localdomain	arch
EOF

echo "installing essential package"
sleep 1
pacman -S \
    wget curl networkmanager parted dosfstools grub efibootmgr noto-fonts ttf-fira-code cmake nlohmann-json spdlog clang llvm \
    xf86-video-amdgpu vulkan-radeon \
    hyprland firefox alacritty \
    pipewire pipewire-pulse wireplumber pavucontrol firefox alacritty \

echo "enabling NetworkManager"
sleep 1
systemctl enable NetworkManager

echo "setting up grub"
sleep 1
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
