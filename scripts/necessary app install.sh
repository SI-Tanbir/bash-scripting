#!/bin/bash

# Update package lists
sudo apt update

# Install Timeshift
sudo apt install -y timeshift

#install chromium
sudo apt install -y chromium
# Install kdeconnect
sudo apt install -y kdeconnect

# Install Qlipper
sudo apt install -y qlipper

# Install Terminator
sudo apt install -y terminator

# Install flatpak
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak

# Install Discord via flatpak
flatpak install -y flathub com.discordapp.Discord

# Install Telegram Desktop via flatpak
flatpak install -y flathub org.telegram.desktop

# Clean up
sudo apt autoremove -y
sudo apt clean



#installing necessary bangla language support for other apps and system
sudo apt install fonts-beng-extra


echo " manually install xdm"

