vim.pack.add({
  { src = "https://github.com/folke/which-key.nvim", version = vim.version.range("3.*") },
})

local wk = require("which-key")

wk.setup({
  preset = "modern",
  -- Show hints before the one-second mapping timeout expires.
  delay = 350,
  win = { border = "rounded" },
  spec = {
    { "<leader>f", group = "Find / search" },
    { "<leader>F", group = "Flutter" },
    { "<leader>c", group = "Code" },
    { "<leader>d", group = "Debug" },
    { "<leader>g", group = "Git" },
    { "<leader>x", group = "Problems / lists" },
  },
})

vim.keymap.set("n", "<leader>?", function()
  wk.show({ global = false })
end, { desc = "Show buffer-local keymaps" })
