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

For NeoVim in this Repo you need to install/clone Packer

```Bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
After install/cloning Packer cd into ~/.config/conf-lnx/nvim and open init.lua with nvim Now you can Update Packer with :PackerUpdate

This will install all Addons listed in the init.lua file

### Note
In some cases you need to Disable the colorschema in ~/.config/conf-lnx/nvim/lua/options.lua. There are two lines for nightfox!
and enable the default colorschema in the options file.
