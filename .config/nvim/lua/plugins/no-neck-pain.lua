-- https://github.com/shortcuts/no-neck-pain.nvim/issues
-- Centers the buffer in the middle of the screen
return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup({
			width = 150,
			autocmds = {
				enableOnVimEnter = true,
			},
		})
	end,
}
