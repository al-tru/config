vim.pack.add({
  { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.*") },
})

require("blink.cmp").setup({
  keymap = { preset = "enter" },
  completion = {
    menu = { auto_show = true },
    documentation = { auto_show = true, auto_show_delay_ms = 300 },
    ghost_text = { enabled = true },
    list = { selection = { preselect = true } },
  },
  sources = { default = { "lsp", "path", "snippets", "buffer" } },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  -- Experimental feature
  signature = { enabled = true },
})
