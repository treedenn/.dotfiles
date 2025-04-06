-- https://github.com/CopilotC-Nvim/CopilotChat.nvim
-- As the name suggests, this plugin is a chat interface for Copilot
return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {},
	},
}
