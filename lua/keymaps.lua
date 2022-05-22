local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Nvim-Tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
-- keymap('n', '<Leader>r', ':NvimTreeRefresh<CR>', opts)
-- keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', opts)

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<Leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', opts)
-- keymap("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
keymap("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Rust
keymap("n", "<Leader>rr", ":RustRun<CR>", opts)
keymap("n", "<Leader>rt", ":RustTest<CR>", opts)
-- vim.api.nvim_command("autocmd FileType rust nmap <Esc>r ':RustRun<CR>'")
vim.api.nvim_command("autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)")
