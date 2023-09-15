local M = {}

local winbar_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
}

-- #4A3E4B
vim.api.nvim_set_hl(0, 'WinBarPath', { bg = '#2C3042', fg = '#FFFFFF' })
vim.api.nvim_set_hl(0, 'WinBarModified', { bg = '#2C3042', fg = '#ff3838' })
vim.api.nvim_set_hl(0, 'Modified', { bg = '#2C3042', fg = '#FFFFFF' })

function M.winbar()

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
        return ""
    end

    local file_path = vim.api.nvim_eval_statusline('%F', {}).str
    --local modified = vim.api.nvim_eval_statusline('%m', {}).str == '[+]' and '[!]' or ''
    local modified = vim.api.nvim_eval_statusline('%m', {}).str
    local buffer_number = vim.api.nvim_eval_statusline('%n', {}).str
    local last_change = vim.fn.strftime('%Y-%m-%d - %H:%M', vim.fn.getftime(vim.fn.expand('%')))

    -- file_path = file_path:gsub('/', ' ➤ ')
    file_path = file_path:gsub('~', ' $HOME')

    return '%=%#WinBarPath#'
     .. ' [' .. buffer_number .. '] '
     .. file_path .. ' '
     .. '%*'
     .. '%#WinBarModified#'
     .. ' ' .. modified
     .. '%*'
     .. '%#Modified#'
     .. ' Last Modified: ' .. last_change
end

return M
