-- Neovim has built-in support for displaying errors, warnings,
-- and hints supplied by language servers or other diagnostic tools.
vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    source = "if_many",
  },
  signs = true,
  underline = true,
  severity_sort = true,
  update_in_insert = false,
})
