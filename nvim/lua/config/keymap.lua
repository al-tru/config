local map = vim.keymap.set
local fzf = require("fzf-lua")

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- File explorer
map("n", "<leader>e", "<cmd>Explore<CR>",
  { desc = "Open file explorer" })

-- Save and quit
map("n", "<leader>w", "<cmd>write<CR>",
  { desc = "Save file" })

map("n", "<leader>q", "<cmd>quit<CR>",
  { desc = "Quit window" })

-- Navigate between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- fzf-lua
map("n", "<leader>ff", fzf.files, { desc = "Find files" })
map("n", "<leader>fg", fzf.live_grep, { desc = "Search project text" })
map("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })
map("n", "<leader>fr", fzf.oldfiles, { desc = "Recent files" })
map("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "Find document symbols" })

-- Text Editor
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", { desc = "Format code" })
