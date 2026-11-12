-- Global variables
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core configurations
require("config.options")
require("config.plugins")
require("config.lsp")
require("config.autocmds")
require("config.diagnostics")
require("config.keymap")

-- Theme
vim.cmd.colorscheme "catppuccin"
