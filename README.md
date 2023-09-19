## Personal Linux Config Files

Here are my Personal Config Files wich i use on Ubuntu 22.04 LTS

## Install

Clone it into .config Directory

```Bash
# Example
git clone https://github.com/AemPi/Linux_Configs.git ~/.config/conf-lnx
```

For ZSH with this Config you need two Repos

```Bash
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/conf-lnx

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/conf-lnx
```

After cloning the Repos execute the 'create_ConfigLinks.sh' Script to link all files to the right Place.

## NeoVim

For NeoVim in this Repo you need to open Neovim wait until Packer and the Plugin are installed
and reopened Neovim simply with

```Bash
nvim
```
