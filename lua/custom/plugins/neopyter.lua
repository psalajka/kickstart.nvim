return {
  {
    'SUSTech-data/neopyter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter', -- neopyter don't depend on `nvim-treesitter`, but does depend on treesitter parser of python
      'AbaoFromCUG/websocket.nvim',  -- for mode='direct'
    },

    ---@type neopyter.Option
    opts = {
      mode='direct',
      remote_address = '127.0.0.1:9001',
      file_pattern = { '*.ju.*' },
      on_attach = function(buf)
        -- vim.print('neopyter attached to buffer: ' .. buf)

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { desc = desc, buffer = buf })
        end

        map('n', '<C-l>', '<cmd>Neopyter execute notebook:run-cell<cr>', 'run selected cell and do not advance')
        map('n', '<M-l>', '<cmd>Neopyter execute notebook:run-cell-and-insert-below<cr>', 'run selected cell and insert below')
        map('n', '<S-l>', '<cmd>Neopyter execute notebook:run-cell-and-select-next<cr>', 'run selected cell')

        map('i', '<C-l>', '<cmd>Neopyter execute notebook:run-cell<cr>', 'run selected cell and do not advance')

        -- same, recommend the former
        -- map('n', '<C-Enter>', '<cmd>Neopyter execute notebook:run-cell<cr>', 'run selected')
        -- map('n', '<C-Enter>', '<cmd>Neopyter run current<cr>', 'run selected')

        -- same, recommend the former
        -- map('n', '<space>X', '<cmd>Neopyter execute notebook:run-all-above<cr>', 'run all above cell')
        -- map('n', '<space>X', '<cmd>Neopyter run allAbove<cr>', 'run all above cell')

        -- same, recommend the former, but the latter is silent
        -- map('n', '<space>nt', '<cmd>Neopyter execute kernelmenu:restart<cr>', 'restart kernel')
        -- map('n', '<space>nt', '<cmd>Neopyter kernel restart<cr>', 'restart kernel')

        -- map('n', '<S-Enter>', '<cmd>Neopyter execute runmenu:run<cr>', 'run selected and select next')
        -- map('n', '<M-Enter>', '<cmd>Neopyter execute run-cell-and-insert-below<cr>', 'run selected and insert below')

        -- map('n', '<F5>', '<cmd>Neopyter execute notebook:restart-run-all<cr>', 'restart kernel and run all')
      end,
    },
  },
}
