local opt = vim.opt

-- Appearance
opt.number = true          -- Show line numbers
opt.relativenumber = true  -- Relative line numbers
opt.cursorline = true      -- Highlight current line
opt.signcolumn = "yes"     -- Always show sign column
opt.wrap = false           -- Disable line wrapping
opt.scrolloff = 8          -- Keep 8 lines around cursor
opt.sidescrolloff = 8      -- Horizontal scroll margin
opt.termguicolors = true   -- True color support

-- Indentation
opt.tabstop = 4            -- Tab width
opt.shiftwidth = 4         -- Indentation width
opt.softtabstop = 2        -- Spaces when pressing Tab
opt.expandtab = true       -- Use spaces instead of tabs
opt.smartindent = true     -- Smart automatic indentation

-- Search
opt.ignorecase = true      -- Case-insensitive search
opt.smartcase = true       -- Case-sensitive if uppercase used
opt.hlsearch = true        -- Highlight search matches
opt.incsearch = true       -- Highlight matches while typing

-- Splits
opt.splitright = true      -- Vertical split opens right
opt.splitbelow = true      -- Horizontal split opens below

-- Clipboard
opt.clipboard = "unnamedplus" -- System clipboard

-- Files and persistence
opt.undofile = true        -- Persistent undo history
opt.confirm = true         -- Confirm before losing changes

-- UI behavior
opt.mouse = "a"            -- Enable mouse
opt.updatetime = 250       -- Update interval (ms)
opt.timeoutlen = 400       -- Mapping timeout (ms)
opt.laststatus = 3         -- Global statusline
-- opt.colorcolumn = "80"     -- Highlight line border

-- Invisible characters
opt.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

