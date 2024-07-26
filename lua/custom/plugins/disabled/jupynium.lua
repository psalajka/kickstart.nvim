-- jupynium.lua
--
-- Selenium-automated Jupyter Notebook that is synchronised with NeoVim in real-time.
-- See https://github.com/kiyoon/jupynium.nvim for more information.

return {
    "kiyoon/jupynium.nvim",
    build = "pip3 install --user .",
    -- build = "conda run --no-capture-output -n jupynium pip install .",
    -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
  dependencies = {
    -- "rcarriga/nvim-notify",   -- optional
    -- "stevearc/dressing.nvim", -- optional, UI for :JupyniumKernelSelect,
  },
}
