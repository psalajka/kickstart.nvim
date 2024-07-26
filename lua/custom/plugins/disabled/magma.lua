-- # Magma
--
-- Magma is a NeoVim plugin for running code interactively with Jupyter.

return {
  "dccsillag/magma-nvim",
  config = function()
    require("magma-nvim").setup({
    })
  end,
  dependencies = {
  }
}
