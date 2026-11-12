vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim",
})

require("lualine").setup({
  sections = {
    lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        -- Count all diagnostics reported to this Neovim session, across files.
        sources = { "nvim_workspace_diagnostic" },
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = "e:", warn = "w:", info = "i:", hint = "h:" },
        always_visible = true,
      },
    },
  },
})
