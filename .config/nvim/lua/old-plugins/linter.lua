-- https://github.com/mfussenegger/nvim-lint
return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    vim.keymap.set('n', '<leader>l', lint.try_lint, { desc = "Try lint" })
  end,
}
