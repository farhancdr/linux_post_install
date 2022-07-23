#!/bin/bash

# some cleanup
sudo apt --purge remove -y libreoffice*
sudo apt --purge remove -y gnome-weather
sudo apt --purge remove -y simple-scan
sudo apt --purge remove -y totem*
sudo apt --purge remove -y rhythmbox*
sudo apt --purge remove -y aisleriot
sudo apt --purge remove -y gnome-mahjongg
sudo apt --purge remove -y gnome-sound-recorder
sudo apt --purge remove -y librhythmbox-core10*



# System Update and Upgrade
sudo apt update
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# Flatpak Support
## sudo apt install -y flatpak
## sudo apt install -y gnome-software-plugin-flatpak
## flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# End of Script

# Display Installation Complete Message
echo "All good now :)" 
echo "Please, restart the computer, and then run 2nd script."