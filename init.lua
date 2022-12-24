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
require "user.rust-tools"
require "user.mason-lsp"

--[[
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").sumneko_lua.setup {}
-- require("lspconfig").rust_analyzer.setup {}
require("lspconfig").sumneko_lua.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})
--]]
