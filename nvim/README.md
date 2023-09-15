# Install Packer

[Github Repo](https://github.com/wbthomason/packer.nvim)

For Unix/Linux Systems
```Bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

In the Lua file put the following code in it:

```lua
require('packer')
require('packer').startup(function()
   use 'wbthomason/packer.nvim'
end)
```

# Install Lualine

[Github Repo](https://github.com/nvim-lualine/lualine.nvim)

Put the folloing command int the Packer config (see above)
```lua
use 'nvim-lualine/lualine.nvim'
```

Now install with the Command
```lua
:PackerSync
```

# Install 'onedark' Theme

[Github Repo](https://github.com/navarasu/onedark.nvim)

Put the folloing command int the Packer config (see above)
```lua
use 'navarasu/onedark.nvim'
```

Now install with the Command
```lua
:PackerSync
```

# 

Is all Done your Packer Command looks like this in your lua File:

```lua
require('packer')
require('packer').startup(function()
   use 'wbthomason/packer.nvim'
   use 'navarasu/onedark.nvim'
   use 'nvim-lualine/lualine.nvim'
   use 'kyazdani42/nvim-web-devicons'
end)
```