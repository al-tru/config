-- For macos: brew install tree-sitter-cli



vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
})


local treesitter = require("nvim-treesitter")

-- Install parsers
treesitter.install({
  "lua",
  "dart",
  "java",
  "c",
  "cpp",
  "json",
  "bash",
  "markdown",
  "markdown_inline",
})

-- Enable Tree-sitter features
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "dart",
    "java",
    "c",
    "cpp",
    "json",
    "sh",
    "markdown",
  },

  callback = function()
    -- Syntax highlighting
    local ok = pcall(vim.treesitter.start)
    if not ok then
      return
    end

    -- Code folding
    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.wo.foldlevel = 99
  end,
})

