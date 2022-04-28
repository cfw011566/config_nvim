local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("settings.lsp.handlers").on_attach,
        capabilities = require("settings.lsp.handlers").capabilities,
    }

    if server.name == "gopls" then
        local gopls_opts = require("settings.lsp.settings.gopls")
        opts = vim.tbl_deep_extend("force", gopls_opts, opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_opts = require("settings.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
