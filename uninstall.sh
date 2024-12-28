#!/bin/sh

#    ___                  ____  _
#   /   | ___  ____ ___  / __ \(_)
#  / /| |/ _ \/ __ `__ \/ /_/ / /
# / ___ /  __/ / / / / / ____/ /
#/_/  |_\___/_/ /_/ /_/_/   /_/
#
# Filename:     uninstall.sh
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

echo "${Red}[-]${Reset} Remove 'kitty' Directory softlink .."
rm ~/.config/kitty

echo "${Red}[-]${Reset} Remove 'Wofi' Directory softlink .."
rm ~/.config/wofi

echo "${Red}[-]${Reset} Remove 'Ghostty' Directory softlink .."
rm ~/.config/ghostty

echo "${Red}[-]${Reset} Remove 'fastfetch' Directory softlink .."
rm ~/.config/fastfetch

echo "${Red}[-]${Reset} Remove '.vimrc' softlink .."
rm ~/.vimrc

echo "${Red}[-]${Reset} Remove '.zsrc' softlink .."
rm ~/.zshrc

echo "${Red}[-]${Reset} Remove '.zprofile' softlink .."
rm ~/.zprofile

echo "${Red}[-]${Reset} Remove '.wezterm.lua' softlink .."
rm ~/.wezterm.lua

