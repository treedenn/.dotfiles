local map = vim.keymap.set

-- Quickfix mappings
map("n", "<leader>q", "<cmd>copen<CR>", { desc = "Open Quickfix" })
map("n", "<leader>Q", "<cmd>cclose<CR>", { desc = "Close Quickfix" })

map("n", "q[", "<cmd>cprev<CR>", { desc = "Quickfix Previous line" })
map("n", "q]", "<cmd>cnext<CR>", { desc = "Quickfix Next line" })

