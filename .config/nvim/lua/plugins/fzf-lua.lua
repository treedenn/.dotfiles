-- https://github.com/ibhagwan/fzf-lua
-- Fuzzy finder for files, buffers and much more.
return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		winopts = {
			width = 0.60,
			row = 0.50,
		},
		keymap = {
			builtin = { false },
			fzf = { false },
		},
	},
	config = function(_, opts)
		require("fzf-lua").setup(opts)
		require("fzf-lua").register_ui_select()
	end,
}
