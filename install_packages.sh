#!/bin/bash

sudo apt update
sudo apt install nala
sudo nala install -y git curl wget vim htop jq fzf

if ! command -v brew &> /dev/null
then
    echo "Homebrew not installed. Installing now..."
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    echo "Homebrew is already installed."
fi


# install recommended brew packages
sudo nala install build-essential
brew install gcc

# install packages
brew install neovim helix nvm

echo "Install finished"
