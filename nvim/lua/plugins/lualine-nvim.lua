return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require('lualine').setup({
      sections = {
        lualine_c = {
          "os.date('%a')", 'data', "require'lsp-status'.status()"
        }
      }
    });
  end,
}
