return {
    {
        "zbirenbaum/copilot.lua",
--        enabled = false,
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = { "hrsh7th/nvim-cmp" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
}
