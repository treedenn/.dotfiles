local fzf_lua = require("fzf-lua")
local map = vim.keymap.set

map("n", "<leader>ff", function() fzf_lua.files() end, { desc = "FZF files" })
map("n", "<leader>fh", function() fzf_lua.oldfiles() end, { desc = "FZF history" })
map("n", "<leader>fg", function() fzf_lua.live_grep() end, { desc = "FZF grep" })
map("n", "<leader>fqq", function() fzf_lua.quickfix() end, { desc = "FZF quickfix" })
map("n", "<leader>fqs", function() fzf_lua.quickfix_stack() end, { desc = "FZF quickfix stack" })
map("n", "<leader>fl", function() fzf_lua.loclist() end, { desc = "FZF Location list" })
map("n", "<leader>fi", function() fzf_lua.lines() end, { desc = "FZF Lines" })
map("n", "<leader>fs", function() fzf_lua.treesitter() end, { desc = "FZF Treesitter" })
map("n", "<leader>fb", function() fzf_lua.buffers() end, { desc = "FZF Buffers" })
map("n", "<leader>ft", function() fzf_lua.tabs() end, { desc = "FZF Tabs" })
map("n", "<leader>fu", function() fzf_lua.spell_suggest() end, { desc = "FZF Spell suggest" })
map("n", "<leader>fm", function() fzf_lua.marks() end, { desc = "FZF Marks" })
map("n", "<leader>fj", function() fzf_lua.jumps() end, { desc = "FZF Jumps" })
map("n", "<leader>fr", function() fzf_lua.registers() end, { desc = "FZF Registers" })

