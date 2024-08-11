return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Get the telescope builtins
    local builtin = require('telescope.builtin')
    
    -- Configure Mappings
    vim.keymap.set('n', '<c-p>', builtin.find_files, {})
    vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
  end,
}
