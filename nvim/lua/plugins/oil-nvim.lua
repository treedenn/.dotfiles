-- https://github.com/stevearc/oil.nvim
return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  keys =  {
    { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
  config = function()
    require("oil").setup({})
  end,
}
