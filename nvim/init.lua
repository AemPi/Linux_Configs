--[[ init.lua ]]
--[[
--  Config file for Neovim
--  Installs Packker if needed and install all Plugins
--  in the Custom Plugin Sections as well
--]]

--[[Install Packer]]
local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'        -- Package Manager

    -- Custom Plugins
    use "EdenEast/nightfox.nvim"        -- [[nightfox needs min neovim 0.8.0]]
    use 'nvim-lualine/lualine.nvim'     -- Lualine Statusline
    use 'kyazdani42/nvim-web-devicons'  -- Web Dev Icons
    use 'nvim-lua/plenary.nvim'         -- 
    
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Autopairs for example ([{}])
    use {
        "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} 
        end
    }


    -- Automatically run packer.clean() followed by packer.update() after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

if PACKER_BOOTSTRAP then
    print '==================================='
    print '    Plugin are being installed'
    print '    Wait until Packer completes'
    print '        then restart nvim'
    print '==================================='
    return
end


-- [[ IMPORT CONFIG FILES ]]
require('statusline')   -- Import Lualine Config file
require('keymaps')      -- Import Keymaps
require('options')      -- Import Options and Colorschema
