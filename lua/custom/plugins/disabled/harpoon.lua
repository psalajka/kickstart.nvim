-- harpoon.lua
--
-- Getting you where you want with the fewest keystrokes.

return {
  'ThePrimeagen/harpoon',

  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    local math = require("math")

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    -- ThePrimeagen likely use the Dvorak keyboard layout!
    -- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    -- vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
    -- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
    -- vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

    require("harpoon").setup({
      menu = {
        width = math.floor(
          vim.api.nvim_win_get_width(0) * 3 / 4
        ),
        height = math.floor(
          vim.api.nvim_win_get_height(0) * 3 / 4
        ),
      }
    })
  end
}
