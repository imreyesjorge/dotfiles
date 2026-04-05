return {
  "nvim-mini/mini.nvim",
  version = false,
  keys = {
    { "<leader>v", "<cmd>lua MiniFiles.open()<cr>", desc = "Show file explorer" },
  },
  config = function ()
    -- Tabline
    require("mini.tabline").setup()

    -- Statusline
    require("mini.statusline").setup()

    -- Files
    require("mini.files").setup()

    -- Comments
    require("mini.comment").setup()

    -- Autopairs
    require("mini.pairs").setup()

  end
}
