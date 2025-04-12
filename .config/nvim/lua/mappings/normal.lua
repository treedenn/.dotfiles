local map = vim.keymap.set

-- Quickfix mappings
map("n", "<leader>q", "<cmd>copen<CR>", { desc = "Open Quickfix" })
map("n", "<leader>Q", "<cmd>cclose<CR>", { desc = "Close Quickfix" })

map("n", "q[", "<cmd>cprev<CR>", { desc = "Quickfix Previous line" })
map("n", "q]", "<cmd>cnext<CR>", { desc = "Quickfix Next line" })

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics in float" })
-- Trouble overwrites since since it works across files
-- vim.keymap.set("n", "[d", function()
-- 	vim.diagnostic.jump({ count = 1, float = true })
-- end, { desc = "Go to previous diagnostic" })
-- vim.keymap.set("n", "]d", function()
-- 	vim.diagnostic.jump({ count = -1, float = true })
-- end, { desc = "Go to next diagnostic" })
vim.keymap.set("n", "<leader>gq", vim.diagnostic.setloclist, { desc = "Diagnostics to location list" })

-- LSP Navigation & Actions
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover info" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>gl", function()
	vim.diagnostic.config({
		virtual_lines = not vim.diagnostic.config().virtual_lines,
	})
end, { desc = "Toggle diagnostic lines" })
