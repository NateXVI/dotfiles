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
if [ -L ~/.tmux.conf ] || [ -e ~/.tmux.conf ]; then
    echo "Existing tmux configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/.tmux.conf ~/.tmux.conf
    echo "tmux configuration linked."
fi

# Create a symlink for wsl configuration.
if [ -L ~/.wslconfig ] || [ -e ~/.wslconfig ]; then
    echo "Existing wsl configuration detected. Please remove it before proceeding."
else
    ln -s $DOTFILES_DIR/.wslconfig ~/.wslconfig
    echo "wsl configuration linked."
fi

# Source env.sh in .bashrc if it's not already being sourced.
ENV_SH_SOURCE="source $DOTFILES_DIR/env.sh"
PROFILE=~/.profile

if grep -Fxq "$ENV_SH_SOURCE" "$PROFILE"; then
    echo "env.sh is already sourced in .bashrc."
else
    echo -e "\n# Source dotfiles environment configurations\n$ENV_SH_SOURCE" >> "$PROFILE"
    echo "env.sh sourcing added to .profile."
fi

echo "Bootstrap process completed."

