local formatter = require("conform")
local map = vim.keymap.set

map("n", "<leader>m", function() formatter.format({ async = true }) end, { desc = "Format file" })
map("v", "<leader>m", function()
  formatter.format({ async = true })
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end, { desc = "Format code" })

