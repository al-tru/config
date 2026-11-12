-- Wiki: https://codeberg.org/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
vim.pack.add({
  "https://github.com/mfussenegger/nvim-dap",
  {
    src = "https://github.com/igorlfs/nvim-dap-view",
    version = vim.version.range("1.*"),
  },
  "https://github.com/folke/trouble.nvim",
})

require("trouble").setup({
  auto_close = true,
  auto_open = false,
  auto_preview = true,
  auto_refresh = true,
  focus = false,
  modes = {
    diagnostics = {
      win = {
        position = "bottom",
        size = 12,
      },
    },
  },
})

