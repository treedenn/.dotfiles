-- https://github.com/NeogitOrg/neogit
-- https://github.com/lewis6991/gitsigns.nvim
-- UI for git commands and status and git signs to the left of the line
return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"ibhagwan/fzf-lua",
		},
		config = true,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	},
}
