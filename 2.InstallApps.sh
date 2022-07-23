#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

#install important apps
sudo apt install ibus-avro
sudo apt install -y htop
sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y ffmpeg
sudo apt install -y flameshot
sudo apt install -y vlc
sudo apt install -y git
sudo apt install -y brave-browser
sudo apt install -y zsh
sudo apt install -y gnome-tweaks
sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y terminator


#install nvm and node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash #install nvm
nvm install --lts


sudo xrandr --newmode "1360x768_60.00"   84.75  1360 1432 1568 1776  768 771 781 798 -hsync +vsync
sudo xrandr --addmode VGA-1 "1360x768_60.00"
echo 'xrandr --newmode "1360x768_60.00"   84.75  1360 1432 1568 1776  768 771 781 798 -hsync +vsync
xrandr --addmode VGA-1 "1360x768_60.00"' >> "$HOME/.profile"

echo "Your apps and graphics are now installed."
echo "Please copy the .fonts, .icons, and .themes to your home directory"
echo "Please, restart the computer, and then run 3nd script to configure zsh"

