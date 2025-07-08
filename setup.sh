#!/bin/bash

# Define the directory where your dotfiles are stored.
DOTFILES_DIR=~/dotfiles

if [ ! -d "$HOME/.config" ]; then
    mkdir "$HOME/.config"
    echo "Config directory created."
fi

# Create a symlink for Neovim configuration.
NVIM_CONFIG_DIR=~/.config/nvim
if [ -L "$NVIM_CONFIG_DIR" ] || [ -e "$NVIM_CONFIG_DIR" ]; then
    echo "Existing Neovim configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/nvim $NVIM_CONFIG_DIR
    echo "Neovim configuration linked."
fi

# Create a symlink for Helix configuration.
HELIX_CONFIG_DIR=~/.config/helix
if [ -L "$HELIX_CONFIG_DIR" ] || [ -e "$HELIX_CONFIG_DIR" ]; then
    echo "Existing Helix configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/helix $HELIX_CONFIG_DIR
    echo "Helix configuration linked."
fi

# Create a symlink for tmux configuration.
TMUX_CONFIG_DIR=~/.config/tmux
if [ -L "$TMUX_CONFIG_DIR" ] || [ -e "$TMUX_CONFIG_DIR" ]; then
    echo "Existing tmux configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/tmux $TMUX_CONFIG_DIR
    echo "tmux configuration linked."
fi

# Create a symlink for wsl configuration.
if [ -L ~/.wslconfig ] || [ -e ~/.wslconfig ]; then
    echo "Existing wsl configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/.wslconfig ~/.wslconfig
    echo "wsl configuration linked."
fi

echo "Bootstrap process completed."

