-- AI-powered coding, seamlessly in Neovim

return {
  {
    'olimorris/codecompanion.nvim',
    opts = {
      display = {
        chat = {
          window = {
            width = 0.333,
          },
        },
      },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    -- keys = {
    --   { '<Leader>cc', '<cmd>CodeCompanionChat<cr>', desc = 'Code Companion: Open Chat' },
    -- },
  },
}
