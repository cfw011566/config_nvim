-- :help options
vim.opt.backup = false
-- vim.opt.clipboard = "unnamedplus"
vim.opt.incsearch = true
vim.opt.errorbells =false
vim.opt.smartcase = false
vim.opt.undodir = '~/.vim/undodir'

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.colorcolumn = '80,132'

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.swapfile = false

vim.opt.backspace = 'indent,start,eol'

-- not work on Terminal of macOS
-- vim.opt.termguicolors = true

-- autocmd
-- auto format when saving rust file (rust-tools.nvim)
vim.api.nvim_command("autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)")

-- auto format when saving go file (go.nvim)
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

-- auto open fold
-- vim.api.nvim_command("autocmd BufReadPost,FileReadPost * normal zR")
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = "normal zR" })
