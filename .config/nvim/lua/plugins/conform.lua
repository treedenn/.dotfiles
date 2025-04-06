-- https://github.com/stevearc/conform.nvim
-- Formats files using the formatter of your choice
return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},

				formatters_by_ft = {
					go = { "gofmt" },
					javascript = { "biome", "prettierd", stop_after_first = true },
					typescript = { "biome", "prettierd", stop_after_first = true },
					json = { "biome", "prettierd", stop_after_first = true },
					lua = { "stylua" },
					vue = { "prettierd" },
				},
			})
		end,
	},
	{
		"zapling/mason-conform.nvim",
		dependencies = {
			"mason.nvim",
			"stevearc/conform.nvim",
		},
		config = function()
			require("mason-conform").setup({
				ensure_installed = {
					"biome",
					"gofmt",
					"prettierd",
					"stylua",
				},
			})
		end,
	},
}
