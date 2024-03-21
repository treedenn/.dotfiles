-- https://github.com/williamboman/mason.nvim
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
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

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "cssls",
        "unocss",
        "html",
        "tsserver",
        "volar",
      },
    })
  end,
}
