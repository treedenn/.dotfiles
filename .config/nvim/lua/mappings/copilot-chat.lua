vim.keymap.set("n", "<Leader>oo", ":CopilotChatOpen<CR>", { noremap = true, silent = true, desc = "Open Copilot Chat" })
vim.keymap.set(
	"n",
	"<Leader>oc",
	":CopilotChatClose<CR>",
	{ noremap = true, silent = true, desc = "Close Copilot Chat" }
)
vim.keymap.set("n", "<Leader>os", ":CopilotChatStop<CR>", { noremap = true, silent = true, desc = "Stop Copilot Chat" })
vim.keymap.set(
	"n",
	"<Leader>or",
	":CopilotChatReset<CR>",
	{ noremap = true, silent = true, desc = "Reset Copilot Chat" }
)

vim.keymap.set(
	"n",
	"<Leader>oa",
	":CopilotChatAgents<CR>",
	{ noremap = true, silent = true, desc = "Open Copilot Agents" }
)
vim.keymap.set(
	"n",
	"<Leader>op",
	":CopilotChatPrompts<CR>",
	{ noremap = true, silent = true, desc = "Stop Copilot Prompts" }
)
vim.keymap.set(
	"n",
	"<Leader>om",
	":CopilotChatModels<CR>",
	{ noremap = true, silent = true, desc = "Stop Copilot Models" }
)
