local copilot = require("copilot.suggestion")

vim.keymap.set("i", "<C-J>", function() copilot.accept() end, { silent = true })        -- Accept suggestion
vim.keymap.set("i", "<C-L>", function() copilot.next() end, { silent = true })          -- Next suggestion
vim.keymap.set("i", "<C-H>", function() copilot.prev() end, { silent = true })          -- Previous suggestion
vim.keymap.set("i", "<C-K>", function() copilot.dismiss() end, { silent = true })       -- Dismiss suggestion

vim.keymap.set("i", "<C-S-J>", function() copilot.accept_line() end, { silent = true }) -- Accept suggestion for line
