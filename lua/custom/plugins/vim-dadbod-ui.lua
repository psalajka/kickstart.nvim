-- vim-dadbob-ui.lua
--
-- Simple UI for vim-dadbod. It allows simple navigation through databases and allows saving queries for later use.

return {
  'kristijanhusak/vim-dadbod-ui',

  dependencies = {
    -- dadbod.vim: Modern database interface for Vim
    'tpope/vim-dadbod',
    -- Database autocompletion powered by https://github.com/tpope/vim-dadbod
    'kristijanhusak/vim-dadbod-completion',
  },

  config = function()
    -- hrsh7th/nvim-cmp
    -- autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
    vim.api.nvim_create_autocmd({"FileType"}, {
      pattern = {"*.sql", "*.mysql", "*.plsql"},
      callback = function()
        require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
      end
    })
  end
}
