#!/bin/sh

#    ___                  ____  _
#   /   | ___  ____ ___  / __ \(_)
#  / /| |/ _ \/ __ `__ \/ /_/ / /
# / ___ /  __/ / / / / / ____/ /
#/_/  |_\___/_/ /_/ /_/_/   /_/
#
# Filename:     install.sh
# Github:       https://github.com/AemPi/Linux_Configs.git
# Maintainer:   Markus Pröpper (AemPi)
#########################################################
#--------------------------------------------#
#
# Create Symlinks for Configs
#
# HOWTO:
# ===========================================
# cd into the Folder where the Configs and 
# this script located is and execute the 
# the script to set Symlinks in the Homefolder
# ===========================================
#
# Command is:
# ln -sf source_file destination_file
#
# -s for Softlink
# -f for If the proposed link (link_name) already exists, then unlink it so that the link may occur.
#    (The -f option overrides any previous -i options.)
#
# Created by Markus Pröpper @ 2021-10-30
#--------------------------------------------#

Reset='\033[0m'           # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


# Create Symlink for Tmux Config
echo -e "${Green}[+]${Reset} Create '.tmux.conf' softlink .."
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# Create Symlink for vimrc
echo -e "${Green}[+]${Reset} Create 'nvim' Directory softlink .."
ln -sf $(pwd)/nvim ~/.config/nvim

# Create Symlink for kitty
echo -e "${Green}[+]${Reset} Create 'kitty' Directory softlink .."
ln -sf $(pwd)/kitty ~/.config/kitty

# Create Symlink for Wofi
echo -e "${Green}[+]${Reset} Create 'Wofi' Directory softlink .."
ln -sf $(pwd)/wofi ~/.config/wofi

# Create Symlink for Ghostty
echo -e "${Green}[+]${Reset} Create 'Ghostty' Directory softlink .."
ln -sf $(pwd)/ghostty ~/.config/ghostty

# Create Symlink for fastfetch
echo -e "${Green}[+]${Reset} Create 'fastfetch' Directory softlink .."
ln -sf $(pwd)/fastfetch ~/.config/fastfetch

# Create Symlink for vimrc
echo -e "${Green}[+]${Reset} Create '.vimrc' softlink .."
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

# Create Symlink for zshrc
echo -e "${Green}[+]${Reset} Create '.zshrc' softlink .."
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc

# Create Symlink for zprofile
echo -e "${Green}[+]${Reset} Create '.zprofile' softlink .."
ln -sf $(pwd)/zsh/.zprofile ~/.zprofile

# Create Symlink for wezterm
echo -e "${Green}[+]${Reset} Create '.wezterm.lua' softlink .."
ln -sf $(pwd)/wezterm/.wezterm.lua ~/.wezterm.lua

