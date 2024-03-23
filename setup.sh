#!/bin/bash
# This script sets up a new machine with all the necessary tools and dotfiles

# Get the sudo password
echo "Enter sudo password:"
sudo echo "Thank you!"
# Install yay (AUR helper)
echo "Setting up yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syyu

# Enabling multilib, community, ungoogled-chromium and arco linux
echo "Enabling multilib, community, ungoogled-chromium and others..."
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo sed -i "/\[community\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo sed -i "/\[home_ungoogled_chromium_Arch]\nServer = https:\/\/download.opensuse.org\/repositories\/home:/ungoogled_chromium\/Arch\//d" /etc/pacman.conf
sudo sed -i "/\[arcolinux_repo\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo sed -i "/\[arcolinux_repo_3party\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo sed -i "/\[arcolinux_repo_xlarge\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo sed -i "/\[motortruck1221os-core-repo\]\nSigLevel = Optional DatabaseOptional\nServer = https:\/\/gitlab.com\/MotorTruck1221OS\/\$repo\/-\/raw\/main\/\$arch/d" /etc/pacman.conf

# Install packages
echo "Installing packages..."
sudo pacman -Syy
yay -Syy --noconfirm - < pkglist.txt

