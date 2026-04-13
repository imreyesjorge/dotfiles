local wk = require('which-key')

wk.add({
  { "<leader>gw", "<cmd>lua MiniJump2d.start()<cr>", desc = "Move the cursor to a specific character", mode = "n" },
  { "<leader>bd", "<cmd>bdelete<cr>", desc = "Close current buffer", mode = "n" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Search for text in the project", mode = "n" }
})
