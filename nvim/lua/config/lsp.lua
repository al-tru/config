-- Advertise Blink completion capabilities
vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })

require("mason").setup()

-- Lua
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    },
  },
})

-- Install and enable servers
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
  },
  automatic_enable = true,
})
