require("helpers/globals")

-- Tabs {{{
opt.expandtab   = true      -- Use spaces instead of the `tab` character by default
opt.shiftwidth  = 2         -- Amount of space characters when pressing `<` or `>`
opt.tabstop     = 2         -- Amount of space characters that the `tab` will match
opt.smartindent = true
-- }}}

-- Clipboard {{{
opt.clipboard = 'unnamedplus'     -- Use system clipboard
-- }}}

-- Folding {{{
opt.foldmethod = 'syntax'
-- }}}

-- Search {{{
opt.ignorecase  = true      -- Ignore case if all characters in lower-case
opt.joinspaces  = false     -- Join multiple spaces in search
opt.smartcase   = true      -- When there's a one capital letter search for exact match
opt.showmatch   = true      -- Highlight search instances
-- }}}

opt.colorcolumn = "90"
