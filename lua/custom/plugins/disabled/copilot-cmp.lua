-- copilot-cmp.lua
--
-- Fully featured & enhanced replacement for copilot.vim complete with API for interacting with Github Copilot
--
-- See https://github.com/zbirenbaum/copilot-cmp
-- See https://github.com/zbirenbaum/copilot.lua

return {
  "zbirenbaum/copilot-cmp",

  dependencies = {
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require('copilot').setup({
          panel = {
            enabled = false,  -- by copilot-cmp
            auto_refresh = false,
            keymap = {
              jump_prev = "[[",
              jump_next = "]]",
              accept = "<CR>",
              refresh = "gr",
              open = "<M-CR>"
            },
            layout = {
              position = "bottom", -- | top | left | right
              ratio = 0.4
            },
          },
          suggestion = {
            enabled = false,  -- by copilot-cmp
            auto_trigger = false,
            debounce = 75,
            keymap = {
              accept = "<M-l>",
              accept_word = false,
              accept_line = false,
              next = "<M-]>",
              prev = "<M-[>",
              dismiss = "<C-]>",
            },
          },
          filetypes = {
            yaml = false,
            markdown = false,
            help = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ["."] = false,
          },
          copilot_node_command = 'node', -- Node.js version must be > 18.x
          server_opts_overrides = {},
        })
      end,
    }
  },

  config = function ()
    require("copilot_cmp").setup()
  end
}
