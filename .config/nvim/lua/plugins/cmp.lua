-- https://github.com/Saghen/blink.cmp
-- Auto completion plugin for Neovim with LSP, Copilot, and Snippets support
return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"fang2hou/blink-copilot",
	},
	version = "*",
	opts = {
		keymap = { preset = "default" },
		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = true,
			},
			ghost_text = {
				enabled = true,
			},
		},

		signature = {
			enabled = true,
		},

		sources = {
			default = { "copilot", "lsp", "path", "snippets", "buffer" },
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 100,
					async = true,
				},
			},
		},
	},
}
