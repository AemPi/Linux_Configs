--[[ INIT.LUA ]]

--Remap space as leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- Lade Lazy.nvim (Pluginmanager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.schedule(function()
  local winbar = require("core.winbar")
  vim.o.winbar = "%{%v:lua.require'core.winbar'.winbar()%}"
end)

require("keymaps")
require("core.options")
--[[ ENDE ]]
