vim.pack.add({
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/kdheepak/lazygit.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/sindrets/diffview.nvim",
})

require("diffview").setup({
  use_icons = false,
})

local gs = require("gitsigns")
gs.setup({
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
  current_line_blame = false,
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = bufnr,
        desc = desc,
      })
    end
    map("n", "]h", function()
      gs.nav_hunk("next")
    end, "Next Git hunk")
    map("n", "[h", function()
      gs.nav_hunk("prev")
    end, "Previous Git hunk")
    map("n", "<leader>gs", gs.stage_hunk, "Stage Git hunk")
    map("n", "<leader>gr", gs.reset_hunk, "Reset Git hunk")
    map("n", "<leader>gp", gs.preview_hunk, "Preview Git hunk")
    map("n", "<leader>gb", gs.blame_line, "Git blame")
  end,
})

