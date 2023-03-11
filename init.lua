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


require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

-- vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme gruvbox')
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

