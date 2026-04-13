local wk = require('which-key')

wk.add({
  { "<leader>fc", vim.lsp.buf.format ,mode = "n" },
  -- { "<leader>fc", function() require("conform").format({ async = true }) end, mode = "n" },
  { "<leader>bd", "<CMD>bdelete<CR>", desc = "Close current buffer", mode = "n" },
  { "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Find File", mode = "n" },
  { "<leader>ft", "<CMD>Telescope live_grep<CR>", desc = "Search for text in the project", mode = "n" }
})
