return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup{
            option = {
--                theme = 'dracula-nvim'
                theme = 'auto'
            }
        }
    end
}
