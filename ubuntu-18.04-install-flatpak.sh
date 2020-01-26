#!/bin/bash

set -e
# Any errors after this will abort the script

# @see https://flatpak.org/setup/Ubuntu/
# Install Flatpak
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install -y flatpak

# Install the Software Flatpak Plugin
sudo apt install -y gnome-software-plugin-flatpak

# Add the Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Post installation
echo "--------------"
echo "Flatpak installed!"
echo "You should restart the system now..."

