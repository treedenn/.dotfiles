-- https://github.com/williamboman/mason.nvim
-- https://mason-registry.dev/registry/list
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'saghen/blink.cmp'
  },
  opts = {
    servers = {
      gopls = {},
      volar = {},
      ts_ls = {
        filetypes = {
          "javascript",
          "typescript",
        },
      },
      tailwindcss = {},
      cssls = {},
      lua_ls = {},
      sqls = {},
      vacuum = {},
      ansiblels = {},
      biome = {},
    }
  },
  config = function(_, opts)
    local servers = {}
    for server, _ in pairs(opts.servers) do
      table.insert(servers, server)
    end

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    local lspconfig = require('lspconfig')

    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
