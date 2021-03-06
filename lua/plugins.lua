local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself

    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",  -- optional, for file icon
        }
--        tag = "nightly"
    }

    -- colorscheme
    use 'sainnhe/sonokai'
    use 'tanvirtin/monokai.nvim'
    use 'martinsione/darkplus.nvim'
    use 'tomasr/molokai'
    -- use 'sickill/vim-monokai'
    -- use 'christianchiarulli/nvcode-color-schemes.vim'

    -- git
    use 'lewis6991/gitsigns.nvim'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
    }

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'

    -- snippets
    use 'L3MON4D3/LuaSnip'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- Golang
    use {
        'ray-x/go.nvim',
        config = function()
            require('go').setup()
        end
    }

    -- Rust
    use 'simrat39/rust-tools.nvim'
    --[[
    use {
        'rust-lang/rust.vim',
        config = function()
            vim.g.rustfmt_autosave = 1
        end
    }
    --]]

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
