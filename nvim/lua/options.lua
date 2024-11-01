-- [[ options.lua ]]

-- [[ LOCAL VARIABLES ]]
local global            = vim.g         -- For the opts options
local opt               = vim.opt       -- Set options (opt/opt/windows-scoped)
local cmd               = vim.cmd       -- vim command

-- [[ COLORSCHEMA ]]
opt.termguicolors   = true                  -- Enable 24-bit RGB colors
--local usercolor     = "tokyonight-night"  -- Default darkblue, Carbonfox, Dawnfox, Dayfox, Duskfox, Nightfox, Nordfox, Terafox
local usercolor     = "catppuccin-mocha"    -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
global.lightline = { colorscheme = usercolor }
cmd("colorscheme " .. usercolor)


-- [[ GENERAL ]]
opt.mouse           = 'a'               -- Enable mouse support
opt.clipboard       = 'unnamedplus'     -- Copy/paste to system clipboard
opt.swapfile        = false             -- Don't use swapfile
--opt.wildmode = {'list','longest'}       -- Command-line completion mode
opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- Completion options (for deoplete)

-- [[ UI Options ]]
opt.syntax          = "ON"              -- str:  Allow syntax highlighting
opt.number          = true              -- bool: Show line numbers
opt.showmatch       = true              -- Highlight matching parenthesis
opt.background      = "dark"            -- Set Background
opt.ignorecase      = true              -- bool: Ignore case in search patterns
opt.smartcase       = true              -- bool: Override ignorecase if search contains capitals
opt.incsearch       = true              -- bool: Use incremental search
opt.hlsearch        = true              -- bool: Highlight search matches
opt.list            = false             -- Show some invisible characters
opt.listchars       = { space = '.', tab = '>~'} -- Show Whitespaces/Tabs with dots etc.
if vim.fn.has('nvim-0.8.0') == 1 then
  opt.winbar        = "%{%v:lua.require'winbar'.winbar()%}" -- Set winbar (need´s NeoVim 0.8.0)
end

-- [[ Tab Options ]]
opt.autoindent      = true
opt.expandtab       = true              -- Use spaces instead of tabs
opt.softtabstop     = 4
opt.shiftwidth      = 4                 -- Shift 4 spaces when tab
opt.tabstop         = 4                 -- 1 tab == 4 spaces
opt.cursorline      = true              -- Enable/Disable Cursorline for currentline
opt.laststatus      = 2

--[[ FILE TEMPLATES ]]
--[[ Inside NeoVim use this command e: test.sh to use the bash Template ]]
vim.api.nvim_exec([[ autocmd BufNewFile *.sh 0r ~/.config/conf-lnx/nvim/skeletons/bash.sh ]], false)
vim.api.nvim_exec([[ autocmd BufNewFile *.py 0r ~/.config/conf-lnx/nvim/skeletons/python.py ]], false)
