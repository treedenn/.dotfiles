-- Might be deprecated in future since C-W h/j/k/l works fine
vim.keymap.set("n", "<M-h>", "<C-w><C-h>", { desc = "Move cursor to left buffer" })
vim.keymap.set("n", "<M-j>", "<C-w><C-j>", { desc = "Move cursor to bottom buffer" })
vim.keymap.set("n", "<M-k>", "<C-w><C-k>", { desc = "Move cursor to top buffer" })
vim.keymap.set("n", "<M-l>", "<C-w><C-l>", { desc = "Move cursor to right buffer" })

vim.keymap.set("n", "<M-Left>", "<C-w><C-h>", { desc = "Move cursor to left buffer" })
vim.keymap.set("n", "<M-Down>", "<C-w><C-j>", { desc = "Move cursor to bottom buffer" })
vim.keymap.set("n", "<M-Up>", "<C-w><C-k>", { desc = "Move cursor to top buffer" })
vim.keymap.set("n", "<M-Right>", "<C-w><C-l>", { desc = "Move cursor to right buffer" })

vim.keymap.set("n", "gh", "<C-w><C-h>", { desc = "Move cursor to left buffer" })
vim.keymap.set("n", "gj", "<C-w><C-j>", { desc = "Move cursor to bottom buffer" })
vim.keymap.set("n", "gk", "<C-w><C-k>", { desc = "Move cursor to top buffer" })
vim.keymap.set("n", "gl", "<C-w><C-l>", { desc = "Move cursor to right buffer" })
