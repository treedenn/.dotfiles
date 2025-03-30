vim.keymap.set("n", "<Leader>co", ":CopilotChatOpen<CR>", { noremap = true, silent = true, desc = "Open Copilot Chat" })
vim.keymap.set("n", "<Leader>cc", ":CopilotChatClose<CR>", { noremap = true, silent = true, desc = "Close Copilot Chat" })
vim.keymap.set("n", "<Leader>cs", ":CopilotChatStop<CR>", { noremap = true, silent = true, desc = "Stop Copilot Chat" })
vim.keymap.set("n", "<Leader>cr", ":CopilotChatReset<CR>", { noremap = true, silent = true, desc = "Reset Copilot Chat" })

vim.keymap.set("n", "<Leader>ca", ":CopilotChatAgents<CR>", { noremap = true, silent = true, desc = "Open Copilot Agents" })
vim.keymap.set("n", "<Leader>cp", ":CopilotChatPrompts<CR>", { noremap = true, silent = true, desc = "Stop Copilot Prompts" })
vim.keymap.set("n", "<Leader>cm", ":CopilotChatModels<CR>", { noremap = true, silent = true, desc = "Stop Copilot Models" })

