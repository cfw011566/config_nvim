-- [[ init.lua ]]

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require "options"
require "keymaps"
require "plugins"
require "user.cmp"
-- require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.nvim-tree"
-- require "user.rust-tools"
require "user.mason-lsp"

require('lualine').setup {
    options = {
        -- theme = 'dracula-nvim'
        theme = 'gruvbox-material'
    }
}
