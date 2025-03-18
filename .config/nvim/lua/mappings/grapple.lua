local map = vim.keymap.set

map("n", "<leader>bt", "<cmd>Grapple toggle<CR>", { desc = "Grapple toggle tag" })
map("n", "<leader>bf", "<cmd>Grapple toggle_tags<CR>", { desc = "Grapple open tag window" })
map("n", "<leader>br", "<cmd>Grapple reset<CR>", { desc = "Grapple remove all tags" })

map("n", "<leader>b[", "<cmd>Grapple cycle_tags prev<CR>", { desc = "Grapple prev tag" })
map("n", "<leader>b]", "<cmd>Grapple cycle_tags next<CR>", { desc = "Grapple next tag" })

map("n", "<leader>b{", "<cmd>Grapple cycle_scopes prev<CR>", { desc = "Grapple prev scope" })
map("n", "<leader>b}", "<cmd>Grapple cycle_scopes next<CR>", { desc = "Grapple next scope" })

map("n", "<leader>bq", "<cmd>Grapple quickfix<CR>", { desc = "Grapple to quickfix" })

map("n", "<leader>b1", "<cmd>Grapple select index=1<CR>", { desc = "Grapple file 1" })
map("n", "<leader>b2", "<cmd>Grapple select index=2<CR>", { desc = "Grapple file 2" })
map("n", "<leader>b3", "<cmd>Grapple select index=3<CR>", { desc = "Grapple file 3" })
map("n", "<leader>b4", "<cmd>Grapple select index=4<CR>", { desc = "Grapple file 4" })

