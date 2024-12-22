--[[ options.lua ]]
local opt = vim.opt
-- local cmd = vim.api.nvim_command

opt.clipboard = 'unnamed'   -- copy to system clipboard

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- [[ Context ]]
opt.colorcolumn = '80,132'
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.wrap = false

-- [[ Filetypes ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ Theme ]]
-- opt.syntax = "ON"
opt.termguicolors = true    -- not work on Terminal of macOS
-- vim.cmd([[colorscheme ayu-mirage]])
-- vim.cmd([[colorscheme gruvbox-material]])
-- vim.cmd([[colorscheme base16-gruvbox-material-dark-medium]])
-- vim.cmd('colorscheme rose-pine')

opt.scrolloff = 8
-- [[ Search ]]
opt.incsearch = true
opt.hlsearch = true
-- opt.ignorecase = true
-- opt.smartcase = true

-- [[ Whitespace ]]
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

-- [[ Other ]]
opt.swapfile = false
opt.backup = false
opt.errorbells =false
opt.smartcase = false
opt.undodir = '~/.vim/undodir'
opt.backspace = 'indent,start,eol'
-- opt.clipboard = "unnamedplus"
