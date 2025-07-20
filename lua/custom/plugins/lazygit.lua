-- Custom plugin for lazygit integration
-- Place your lazygit plugin configuration here

return {
  'kdheepak/lazygit.nvim',
  cmd = { 'LazyGit' },
  keys = {
    { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'Open LazyGit' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    -- Optional: custom config for lazygit.nvim
  end,
}
