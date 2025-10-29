return {
  -- Mason
  { "williamboman/mason.nvim", config = true },

  -- Mason-LSPConfig für automatische LSP-Integration
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "rust_analyzer" },
        handlers = {
          -- automatische Aktivierung installierter LSPs
          function(server_name)
            vim.lsp.enable(server_name)
          end,
        },
      })
    end,
  },

  -- Nvim LSPConfig
  { "neovim/nvim-lspconfig" },
}
