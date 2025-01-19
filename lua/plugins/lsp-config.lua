return {
--[[
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup {
                ui = {
                    border = "rounded",
                },
            }
        end
    },
--]]
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "nvim-lua/plenary.nvim",
        },
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason").setup {
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                },
            }
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "zls" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            {
                "folke/neodev.nvim",
            },
        },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')

            local icons = require "icons"
            local default_diagnostic_config = {
                signs = {
                    active = true,
                    values = {
                        { name = "DiagnosticSignError", text = icons.diagnostics.Error },
                        { name = "DiagnosticSignWarn", text = icons.diagnostics.Warning },
                        { name = "DiagnosticSignHint", text = icons.diagnostics.Hint },
                        { name = "DiagnosticSignInfo", text = icons.diagnostics.Information },
                    },
                },
                virtual_text = false,
                update_in_insert = false,
                underline = true,
                severity_sort = true,
                float = {
                    focusable = true,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            }

            vim.diagnostic.config(default_diagnostic_config)

            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
            vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
            require("lspconfig.ui.windows").default_options.border = "rounded"


            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.zls.setup({
                capabilities = capabilities,
                cmd = { "/Users/cfw/.local/bin/zls" }
            })
            lspconfig.rust_analyzer.setup {
                capabilities = capabilities,
                -- Server-specific settings. See `:help lspconfig-setup`
                settings = {
                    ['rust-analyzer'] = {
                        inlayHints = { locationLinks = true },
                        imports = {
                            granularity = {
                                group = "module",
                            },
                            prefix = "self",
                        },
                        cargo = {
                            buildScripts = {
                                enable = true,
                            },
                        },
                        procMacro = {
                            enable = true
                        },
                    },
                },
            }

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "<leader>g", vim.diagnostic.setloclist, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

        end
    },
    --[[
    {
        "chrisgrieser/nvim-lsp-endhints",
        event = "LspAttach",
        opts = {}, -- required, even if empty
    },
    --]]
}
