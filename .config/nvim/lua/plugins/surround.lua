-- https://github.com/kylechui/nvim-surround
-- Add, delete, change surroundings (parens, brackets, quotes, etc.) with ease
return {
	"kylechui/nvim-surround",
	version = "^3.0.0",
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({})
	end,
}
