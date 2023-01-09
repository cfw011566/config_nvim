--[[ options.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

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
opt.syntax = "ON"
opt.termguicolors = true    -- not work on Terminal of macOS
-- vim.cmd([[colorscheme dracula]])
-- vim.cmd([[colorscheme molokai]])
vim.cmd([[colorscheme gruvbox]])

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


-- autocmd
-- auto format when saving rust file (rust-tools.nvim)
-- vim.api.nvim_command("autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)")
-- vim.lsp.buf.formatting_sync deprecated
-- from neovim doc
-- " Auto-format *.rs (rust) files prior to saving them
-- " (async = false is the default for format)
-- autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })
cmd("autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })")

-- auto format when saving go file (go.nvim)
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

-- auto open fold
-- vim.api.nvim_command("autocmd BufReadPost,FileReadPost * normal zR")
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = "normal zR" })

