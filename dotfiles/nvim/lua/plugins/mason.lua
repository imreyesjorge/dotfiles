return {
  -- Mason Plugin
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {}
    end,
  },

  -- Mason LSP-Config Plugin
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer", "cssls", "dockerls", "bashls", "html", "eslint", "shopify_theme_ls", "marksman", "intelephense", "pylyzer", "sqlls", "taplo", "vuels", "yamlls" }
      }

    end,
  },

  -- Nvim LSP-Config Plugin
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig");

      -- Lua LSP
      lsp.lua_ls.setup {}

      -- Rust LSP
      lsp.rust_analyzer.setup {}

      -- CSS/SCSS LSP
      lsp.cssls.setup {}

      -- Docker LSP
      lsp.dockerls.setup {}

      -- Bash LSP
      lsp.bashls.setup {}

      -- HTML LSP
      lsp.html.setup {}

      -- JavaScript/TypeScript LSP
      lsp.eslint.setup {}

      -- Liquid LSP
      lsp.shopify_theme_ls.setup {}

      -- Markdown LSP
      lsp.marksman.setup {}

      -- PHP LSP
      lsp.intelephense.setup {}

      -- Python LSP
      lsp.pylyzer.setup {}

      -- SQL LSP
      lsp.sqlls.setup {}

      -- TOML LSP
      lsp.taplo.setup {}

      -- Vue LSP
      lsp.vuels.setup {}

      -- YAML LSP
      lsp.yamlls.setup {}
    end,
  },
}
