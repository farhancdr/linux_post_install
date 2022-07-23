#!/bin/bash

sudo apt install -y zsh
sudo apt-get install powerline fonts-powerline
sudo chsh -s /usr/bin/zsh

#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy dotfiles to home directory
cp -i ./.zshrc ~/.zshrc
cp  -i ./.p10k.zsh ~/.p10k.zsh
cp -i ./.zsh_history ~/.zsh_history
cp -i ./.profile ~/.profile

echo "All good now :) you are good to go"
