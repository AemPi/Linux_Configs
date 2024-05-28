## Personal Linux Config Files

Here are my Personal Config Files wich i use on Manjaro Linux

Feel free to fork and customize it ;)

## Installation

### Required Packages

```Bash
sudo pacman -S git neovim htop tmux kitty ttf-victor-mono-nerd zsh figlet fzf
```

and your Shell need to run as login shell in your Terminal for example:  /usr/bin/zsh --login

If the requirements are given then Clone the repo into .config/conf-lnx Directory

```Bash
git clone https://github.com/AemPi/Linux_Configs.git ~/.config/conf-lnx
```

After cloning the Repo cd into the ~/.config/conf-lnx directory and execute the 'install.sh' Script to link all files to the right Place.
The Script is created for Arch Based Distros with the pacman Packetmanager!

## NeoVim

For NeoVim in this Repo you need to open Neovim wait until Packer and the Plugin are installed
and reopened Neovim simply with

```Bash
nvim
```


## Uninstall
cd into the ~.config/conf-lnx directory and execute the 'uninstall.sh'
