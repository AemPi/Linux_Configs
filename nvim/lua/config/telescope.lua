return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      defaults = {
        path_display = { "smart" }
        -- weitere Optionen
      },
    }
    -- ggf. Extensions laden: require("telescope").load_extension("fzf")
  end,
}
