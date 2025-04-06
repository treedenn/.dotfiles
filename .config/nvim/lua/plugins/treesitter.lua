-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter-context
-- Treesitter is a parser generator tool and an incremental parsing library
-- It allows to analyse and detect code structures in a programming language and more
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"lua",
					"vim",
					"helm",
					"go",
					"gomod",
					"java",
					"javadoc",
					"vue",
					"typescript",
					"javascript",
					"json",
					"xml",
					"yaml",
					"bash",
				},
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("treesitter-context").setup({
				enable = true,
				max_lines = 0,
				min_window_height = 0,
				line_numbers = false,
				multiline_threshold = 5,
				trim_scope = "outer",
				mode = "cursor",
				separator = "-",
				zindex = 20,
			})
		end,
	},
}
