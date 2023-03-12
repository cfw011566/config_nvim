-- [[ init.lua ]]

-- LEADER
-- vim.g.mapleader = ","
-- vim.g.localleader = "\\"

-- IMPORTS
require "variables"
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

-- vim.cmd('colorscheme rose-pine')
vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme dracula')
-- vim.cmd('colorscheme ayu')

require('lualine').setup {
    options = {
--        theme = 'rose-pine'
        theme = 'gruvbox'
--        theme = 'dracula-nvim'
--        theme = 'ayu'
    }
}

