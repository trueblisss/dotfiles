#!/bin/sh

echo "==> Installing paru..."
sudo pacman -S --needed base-devel -y
cd ~/pkgs
git clone https://aur.archlinux.org/paru.git ~/pkgs/paru
cd ~/pkgs/paru
makepkg -si
