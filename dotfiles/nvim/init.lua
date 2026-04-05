vim.g.mapleader = " "

-- General Settings
require("settings")

-- Plugin management
require("lazy-bootstrap") 
require("lazy").setup("plugins")

require("keybindings")

vim.cmd([[colorscheme gruvbox]])
