#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

#install important apps
echo "Installing important apps..."
sudo apt install ibus-avro
sudo apt install -y htop
sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y ffmpeg
sudo apt install -y flameshot
sudo apt install -y vlc
sudo apt install -y git
sudo apt install -y zsh
sudo apt install -y gnome-tweaks
sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y terminator
sudo apt install -y telegram-desktop
sudo snap install --classic code



#install nvm and node
echo "Installing nvm and node..."
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install --lts

#install docker
echo "Installing Docker"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# changing the permission
sudo chmod 666 /var/run/docker.sock

#Download and install chrome
echo "Downloading and installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#install zsh and change default shell to zsh
echo "Installing zsh... "
echo "Changing default shell to zsh..."

sudo apt install -y zsh
sudo apt-get install -y powerline fonts-powerline
sudo chsh -s /usr/bin/zsh

echo "Your apps and graphics are now installed."
echo "You can now change theme and appearance from Tweaks app"
echo "Extract the fonts_themes.zip file and copy it folders to home directory."
echo "Please, restart the computer, and then run 3nd script to configure zsh and final setup"

