-- https://github.com/lukas-reineke/indent-blankline.nvim
-- Indent guides
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({})
	end,
}
