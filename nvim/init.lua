-- Global variables
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load plugins
local plugin_files = vim.fn.globpath(
  vim.fn.stdpath("config") .. "/lua/plugins",
  "*.lua",
  false,
  true
)

table.sort(plugin_files)

for _, file in ipairs(plugin_files) do
  dofile(file)
end

-- Core configurations
require("config.options")
require("config.lsp")
require("config.autocmds")
require("config.diagnostics")
require("config.keymap")

-- Set the theme
vim.cmd.colorscheme "catppuccin"

-- TODO: add git plugins
-- Add trouble if needed
-- Add problems into lualine
-- Add which-key https://neovimcraft.com/plugin/folke/which-key.nvim/
-- Maybe change indent from 2 to 4
-- Make AI review for my config
-- Show files search on double shift
-- add icons
-- set contrl J Down and UP
