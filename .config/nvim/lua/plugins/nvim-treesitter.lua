-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      auto_install = true,
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "json",
        "yaml",
        "css",
        "scss",
        "http",
        "javascript",
        "typescript",
        "vue",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
    })
  end,
}
