-- https://github.com/mfussenegger/nvim-dap
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
-- https://github.com/rcarriga/nvim-dap-ui
-- https://github.com/leoluz/nvim-dap-go
-- Debbuging and debugging UI for Neovim
-- Includes a simple plugin to install debuggers
return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
			"jay-babu/mason-nvim-dap.nvim",
			"mason.nvim",
			-- "theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			require("dapui").setup({})
			require("dap-go").setup()
			require("mason-nvim-dap").setup({
				ensure_installed = { "delve" },
			})

			-- dap.listeners.before.attach.dapui_config = function()
			-- 	dapui.open()
			-- end
			-- dap.listeners.before.launch.dapui_config = function()
			-- 	dapui.open()
			-- end
			-- dap.listeners.before.event_terminated.dapui_config = function()
			-- 	dapui.close()
			-- end
			-- dap.listeners.before.event_exited.dapui_config = function()
			-- 	dapui.close()
			-- end
		end,
	},
}
