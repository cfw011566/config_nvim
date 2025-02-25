return {
  -- Lazy
  {
    "jackMort/ChatGPT.nvim",
    -- enabled = false,
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        --[[
        openai_params = {
          model = "gpt-4o-mini",
        }
        ]]
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      -- "folke/trouble.nvim", -- optional
      "nvim-telescope/telescope.nvim"
    }
  },
}
