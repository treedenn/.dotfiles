-- Keymaps for DAP (Debug Adapter Protocol) in Neovim
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end, { desc = "Continue" })
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end, { desc = "Step into" })
vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end, { desc = "Step over" })
vim.keymap.set("n", "<leader>dO", function() require("dap").step_out() end, { desc = "Step out" })
vim.keymap.set("n", "<leader>dr", function() require("dap").repl() end, { desc = "Eval interactively" })
vim.keymap.set("n", "<leader>dl", function() require("dap").run_last() end, { desc = "Run last" })
vim.keymap.set("n", "<leader>dq", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dQ", function() require("dap").set_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set('n', "<Leader>lp", function() require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end, { desc = "Log point" })

-- Keymaps for DAP UI
vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Toggle DAP UI" })
