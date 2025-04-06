-- https://github.com/bluz71/vim-moonfly-colors
-- As the name suggests, is it a color scheme
return {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme moonfly]])
	end,
}
