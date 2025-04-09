vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Workspace Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>xd",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Document/Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>xl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
