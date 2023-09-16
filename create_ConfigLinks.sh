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

# Create Symlink for Tmux Config
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# Create Symlink for vimrc
ln -sf $(pwd)/nvim ~/.config/nvim

# Create Symlink for vimrc
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

# Create Symlink for zshrc
ln -sf $(pwd)/zsh-conf/.zshrc ~/.zshrc

# Create Symlink for zprofile
ln -sf $(pwd)/zsh-conf/.zprofile ~/.zprofile

# Clone ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/conf-lnx/zsh-syntax-highlighting

# Clone ZSH Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/conf-lnx
