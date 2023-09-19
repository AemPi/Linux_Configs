-- [[ options.lua ]]

-- [[ LOCAL VARIABLES ]]
local global            = vim.g         -- For the opts options
local opt               = vim.opt       -- Set options (opt/opt/windows-scoped)
local cmd               = vim.cmd       -- vim command

-- [[ COLORSCHEMA ]]
opt.termguicolors   = true              -- Enable 24-bit RGB colors
--vim.cmd[[colorscheme darkblue]]       -- Default Colorschema
vim.g.lightline = { colorscheme = "nightfox" }
vim.cmd("colorscheme nightfox")         -- Carbonfox, Dawnfox, Dayfox, Duskfox, Nightfox, Nordfox, Terafox


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

