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
# Remove Symlinks for Configs
#
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


echo "${Red}[-]${Reset} Remove '.tmux.conf' softlink .."
rm ~/.tmux.conf

echo "${Red}[-]${Reset} Remove 'nvim' Directory softlink .."
rm ~/.config/nvim

echo "${Red}[-]${Reset} Remove '.vimrc' softlink .."
rm ~/.vimrc

echo "${Red}[-]${Reset} Remove '.zsrc' softlink .."
rm ~/.zshrc

echo "${Red}[-]${Reset} Remove '.zprofile' softlink .."
rm ~/.zprofile

echo # New Line
echo -e "${Yellow}[?]${Reset} Check if 'figlet' is installed ..."
if [[ $(sudo pacman -Ss figlet | grep "extra/figlet" | grep "Install") ]]
then
    echo -e "${Red}[-]${Reset} figlet is installed ..."
    read -p "${Yellow}[?]${Reset} Removing figlet? (Y/N): " -n 1 -r
    echo # For new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${Green}[+]${Reset} removing Packet 'figlet' ..."
        sudo pacman --remove figlet 
    fi
else
    echo -e "${Green}[+]${Reset} not installed!"
fi
