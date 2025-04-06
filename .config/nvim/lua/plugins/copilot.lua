-- https://github.com/zbirenbaum/copilot.lua
-- Allows to use copilot in neovim, but is integrated into blink.cmp
return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = false,
				auto_trigger = false,
				keymap = {
					accept = false,
					accept_word = false,
					accept_line = false,
					next = false,
					prev = false,
					dismiss = false,
				},
			},
			panel = { enabled = false },
		})
	end,
}
