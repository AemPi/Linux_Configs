-- [[ init.lua ]]


-- [[ IMPORTS ]]
require('statusline')
require('keymaps')
require('options')
require('packer')
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- [[nightfly needs neovim 0.8.0]]
    use 'bluz71/vim-nightfly-guicolors'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end}
end)
