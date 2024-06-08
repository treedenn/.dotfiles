-- https://github.com/williamboman/mason.nvim
-- https://mason-registry.dev/registry/list
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "biome",
        "sqlfluff",
      }
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "cssls",
        "unocss",
        "html",
        "tsserver",
        "volar",
        "gopls",
        "biome",
        "sqlls",
        "jsonls",
        "yamlls",
      },
    })
  end,
}

