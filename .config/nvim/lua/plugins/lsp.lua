-- https://github.com/williamboman/mason.nvim
-- https://mason-registry.dev/registry/list
-- https://github.com/neovim/nvim-lspconfig
-- LSP configuration with mason as the lsp manager and blink as the completion source
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "williamboman/mason.nvim",
    "saghen/blink.cmp"
  },
  opts = {
    servers = {
      lua_ls = {},
      gopls = {},
      ts_ls = {
        filetypes = {
          'typescript',
          'javascript',
          'javascriptreact',
          'typescriptreact',
          'vue'
        }
      },
      tailwindcss = {},
      cssls = {},
      volar = {},
      sqls = {},
      vacuum = {},
      ansiblels = {},
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


    -- dynamic config for volar
    local mason_registry = require('mason-registry')
    local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() ..
        '/node_modules/@vue/language-server'

    local lspconfig = require('lspconfig')

    lspconfig["ts_ls"].init_options = {
      plugins = {
        {
          name = '@vue/typescript-plugin',
          location = vue_language_server_path,
          languages = { 'vue' },
        },
      },
    }

    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
