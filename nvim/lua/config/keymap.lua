local map = vim.keymap.set
local fzf = require("fzf-lua")

map("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights
map("n", "<leader>e", "<cmd>Explore<CR>", { desc = "Open file explorer" }) -- file explorer
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save file" }) -- save
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit window" }) -- quit

-- navigate between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- fzf-lua
map("n", "<leader>ff", fzf.files, { desc = "Find files" })
map("n", "<leader>fg", fzf.live_grep, { desc = "Search project text" })
map("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })
map("n", "<leader>fr", fzf.oldfiles, { desc = "Recent files" })
map("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "Find document symbols" })

-- text Editor
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", { desc = "Format code" })

-- dap (Debug adapter protocol)
-- Debug execution
local dap = require("dap")
map("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue", })
map("n", "<F10>", dap.step_over, { desc = "Debug: Step over" })
map("n", "<F11>", dap.step_into, { desc = "Debug: Step into" })
map("n", "<F12>", dap.step_out, { desc = "Debug: Step out" })
map("n", "<F9>", dap.toggle_breakpoint, { desc = "Debug: Toggle breakpoint" })
map("n", "<leader>db", dap.set_breakpoint, { desc = "Debug: Conditional breakpoint" })
map("n", "<leader>dr", dap.restart, { desc = "Debug: Restart" })
map("n", "<leader>dq", dap.terminate, { desc = "Debug: Terminate" })
map("n", "<leader>du", "<cmd>DapViewToggle<CR>", { desc = "Debug: Toggle UI" })

-- TreeSitter keymaps:
-- zc Close current fold
-- zo Open current fold
-- za Toggle current fold
-- zM Close all folds
-- zR Open all folds
-- zj Go to next fold
-- zk Go to previous fold

-- git
-- diffview keymaps:
-- ]x           Next conflict
-- [x           Previous conflict
-- <leader>co   Choose ours
-- <leader>ct   Choose theirs
-- <leader>cb   Choose base
-- <leader>ca   Keep both versions
-- dx           Delete conflict region
-- g<C-x>       Cycle merge layouts
map("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open Git diff / merge conflicts" })
map("n", "<leader>gD", "<cmd>DiffviewClose<CR>", { desc = "Close Git diff" })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", { desc = "Git file history" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })

