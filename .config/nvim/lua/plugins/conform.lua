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
					go = { "goimports", "gofmt", lsp_format = "fallback" },
					javascript = { "biome" },
					typescript = { "biome" },
					json = { "biome", "prettierd", lsp_format = "fallback" },
					lua = { "stylua", lsp_format = "fallback" },
					vue = { "prettierd", lsp_format = "fallback" },
				},
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
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
