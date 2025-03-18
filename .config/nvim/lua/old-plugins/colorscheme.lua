-- https://github.com/bluz71/vim-moonfly-colors
return {
  "bluz71/vim-moonfly-colors",
  priority = 1000,
  name = "moonfly",
  lazy = false,
  config = function()
    vim.cmd [[colorscheme moonfly]]
  end,
}
