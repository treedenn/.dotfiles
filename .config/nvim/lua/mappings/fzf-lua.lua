local fzf_lua = require("fzf-lua")
local map = vim.keymap.set

map("n", "<leader>ff", function() fzf_lua.files() end, { desc = "FZF Files" })
map("n", "<leader>fh", function() fzf_lua.history() end, { desc = "FZF History" })
map("n", "<leader>fg", function() fzf_lua.live_grep() end, { desc = "FZF Live Grep" })
map("n", "<leader>fq", function() fzf_lua.quickfix() end, { desc = "FZF Live Grep" })
map("n", "<leader>fl", function() fzf_lua.lines() end, { desc = "FZF Lines" })
map("n", "<leader>fs", function() fzf_lua.treesitter() end, { desc = "FZF Treesitter" })
map("n", "<leader>fb", function() fzf_lua.buffers() end, { desc = "FZF Buffers" })
map("n", "<leader>ft", function() fzf_lua.tabs() end, { desc = "FZF Tabs" })
