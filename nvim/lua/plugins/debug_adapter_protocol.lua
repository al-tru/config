-- Wiki: https://codeberg.org/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
vim.pack.add({
  "https://github.com/mfussenegger/nvim-dap",
  {
    src = "https://github.com/igorlfs/nvim-dap-view",
    version = vim.version.range("1.*"),
  },
})
