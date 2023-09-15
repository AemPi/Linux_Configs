-- [[ KEYMAPINGS ]]

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<S-Left>", "<C-w>h", opts)
keymap("n", "<S-Down>", "<C-w>j", opts)
keymap("n", "<S-Up>", "<C-w>k", opts)
keymap("n", "<S-Right>", "<C-w>l", opts)

keymap("n", "<Leader>e", ":Lex 30<cr>", opts)

-- [[ 
--    Split Window 
--    https://www.tecmint.com/split-vim-screen/
-- ]]
-- Vertically
keymap("n", "<S-v>", "<C-w>v", opts)
-- Horizontally
keymap("n", "<S-o>", "<C-w>s", opts)

-- Telescope Mappings
keymap("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)

-- Resize with arrows
--keymap("n", "<D-y><Up>", ":resize +2<CR>", opts)
--keymap("n", "<D-y><Down>", ":resize -2<CR>", opts)
--keymap("n", "<D-y><Left>", ":vertical resize -2<CR>", opts)
--keymap("n", "<D-y><Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

