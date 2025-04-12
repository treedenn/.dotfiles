local formatter = require("conform")

vim.keymap.set("n", "<leader>m", function()
	formatter.format({ async = true })
end, { desc = "Format file" })

vim.keymap.set("v", "<leader>m", function()
	formatter.format({ async = true })
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end, { desc = "Format code" })
