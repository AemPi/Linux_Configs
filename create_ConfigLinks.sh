#!/bin/sh

#    ___                  ____  _
#   /   | ___  ____ ___  / __ \(_)
#  / /| |/ _ \/ __ `__ \/ /_/ / /
# / ___ /  __/ / / / / / ____/ /
#/_/  |_\___/_/ /_/ /_/_/   /_/
#
# Filename:     create_ConfigLinks.sh
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


echo -e "${Green}[+]${Reset} Create '.tmux.conf' softlink .."
# Create Symlink for Tmux Config
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

echo -e "${Green}[+]${Reset} Create 'nvim' Directory softlink .."
# Create Symlink for vimrc
ln -sf $(pwd)/nvim ~/.config/nvim

echo -e "${Green}[+]${Reset} Create '.vimrc' softlink .."
# Create Symlink for vimrc
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

echo -e "${Green}[+]${Reset} Create '.zshrc' softlink .."
# Create Symlink for zshrc
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc

echo -e "${Green}[+]${Reset} Create '.zprofile' softlink .."
# Create Symlink for zprofile
ln -sf $(pwd)/zsh/.zprofile ~/.zprofile

# Check for figlet Packet
echo # New Line
echo -e "${Yellow}[?]${Reset} Check if 'figlet' is installed ..."
if [[ ! $(sudo pacman -Ss figlet | grep "extra/figlet" | grep "Install") ]]
then
    echo -e "${Red}[-]${Reset} figlet is not installed (required for .zprofile).."
    read -p "${Yellow}[?]${Reset} Install figlet? (Y/N): " -n 1 -r
    echo # For new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${Green}[+]${Reset} Installing Packet 'figlet' ..."
        sudo pacman -S figlet 
    fi
else
    echo -e "${Green}[+]${Reset} already installed!"
fi
