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


echo "${Green}[+]${Reset} Create '.tmux.conf' softlink .."
# Create Symlink for Tmux Config
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

echo "${Green}[+]${Reset} Create 'nvim' Directory softlink .."
# Create Symlink for vimrc
ln -sf $(pwd)/nvim ~/.config/nvim

echo "${Green}[+]${Reset} Create '.vimrc' softlink .."
# Create Symlink for vimrc
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

echo "${Green}[+]${Reset} Create '.zshrc' softlink .."
# Create Symlink for zshrc
ln -sf $(pwd)/zsh-conf/.zshrc ~/.zshrc

echo "${Green}[+]${Reset} Create '.zprofile' softlink .."
# Create Symlink for zprofile
ln -sf $(pwd)/zsh-conf/.zprofile ~/.zprofile

# Clone ZSH Syntax Highlighting
if [ ! -d "~/.config/conf-lnx/zsh-syntax-highlighting" ]; then
  echo "${Green}[+]${Reset} Install zsh-syntax-highlighting ..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/conf-lnx/zsh-syntax-highlighting > /dev/null 2>&1
fi

echo "${Green}[+]${Reset} Create 'zsh-syntax-highlighting' Directory softlink .."
ln -sf $(pwd)/zsh-syntax-highlighting ~/.config/zsh-syntax-highlighting

# Clone ZSH Autosuggestions
if [ ! -d "~/.config/conf-lnx/zsh-autosuggestions" ]; then
  echo "${Green}[+]${Reset} Install zsh-autosuggestions ..."
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/conf-lnx/zsh-autosuggestions > /dev/null 2>&1
fi

echo "${Green}[+]${Reset} Create 'zsh-autosuggestions' Directory softlink .."
ln -sf $(pwd)/zsh-autosuggestions ~/.config/zsh-autosuggestions
