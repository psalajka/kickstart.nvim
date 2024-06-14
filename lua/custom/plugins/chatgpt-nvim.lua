-- chatgpt-nvim.lua
--
-- ChatGPT Neovim Plugin: Effortless Natural Language Generation with OpenAI's ChatGPT API
-- See https://github.com/jackMort/ChatGPT.nvim

local home = vim.fn.expand("$HOME")

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "cat " .. home .. "/.chatgpt-nvim",
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  }
}
