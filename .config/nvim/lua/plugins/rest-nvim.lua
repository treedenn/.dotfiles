-- https://github.com/rest-nvim/rest.nvim
return {
  "rest-nvim/rest.nvim",
  ft = "http",
  dependencies = {
    "vhyrro/luarocks.nvim"
  },
  opts = {
    rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" }
  },
  config = function()
    require("rest-nvim").setup()

    vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>rl', '<cmd>Rest run last<CR>', { noremap = true, silent = true })
  end,
}
