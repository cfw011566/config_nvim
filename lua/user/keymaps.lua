local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

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

-- NERDTree
keymap('n', '<c-n>', ':NERDTreeToggle<CR>', {})

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {})
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', {})
keymap('n', '<Leader>fb', ':Telescope buffers<CR>', {})
keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', {})
