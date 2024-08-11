return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      -- List of parser names that must always be installed
      ensure_installed = { "lua", "rust", "typescript", "astro", "javascript", "json", "gitignore", "dockerfile", "css", "scss", "sql", "tsx", "vue", "yuck", "php", "vim", "markdown", "markdown_inline" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
      },
    } 
  end,
}
