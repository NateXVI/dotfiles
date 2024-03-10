#!/bin/bash

# Define the directory where your dotfiles are stored.
DOTFILES_DIR=~/dotfiles

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

# Source env.sh in .bashrc if it's not already being sourced.
ENV_SH_SOURCE="source $DOTFILES_DIR/env.sh"
BASHRC=~/.bashrc

if grep -Fxq "$ENV_SH_SOURCE" "$BASHRC"; then
    echo "env.sh is already sourced in .bashrc."
else
    echo -e "\n# Source dotfiles environment configurations\n$ENV_SH_SOURCE" >> "$BASHRC"
    echo "env.sh sourcing added to .bashrc."
fi

echo "Bootstrap process completed."

