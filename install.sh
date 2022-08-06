#!/bin/sh

# This script will install all required packages and dependencies to build
sudo pacman -S alacritty starship neovim tmux fish nitrogen picom zathura ranger nm-applet
sudo pacman -S cmus # music
sudo pacman -S exa fzf ripgrep fd tokei procs
sudo pacman -S eva # Calculator Replacement
sudo pacman -S dust # Disk Space Utility
# Try zoxide and decide whether it's worth adding
# yay -S ytop # HTOP BUT WAAAY BETTER

