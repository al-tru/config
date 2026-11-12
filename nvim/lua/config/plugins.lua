vim.pack.add({
  -- color theme
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },

  -- lsp
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },

  -- blink
  { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.*") },

  -- lualine
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim",

  -- fzf-lua
  -- for macos: brew install fzf ripgrep fd
  "https://github.com/ibhagwan/fzf-lua"
})

require("lualine").setup()
require("fzf-lua").setup({})
require("blink.cmp").setup({
  keymap = { preset = "enter" },
  completion = {
    menu = { auto_show = true },
    documentation = { auto_show = true, auto_show_delay_ms = 300 },
    ghost_text = { enabled = true },
    list = { selection = { preselect = true } }
  },
  sources = { default = { "lsp", "path", "snippets", "buffer" } },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  -- Experimantal feature
  signature = { enabled = true },
})

