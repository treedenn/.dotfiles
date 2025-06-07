local fzf_lua = require("fzf-lua")

vim.keymap.set("n", "<leader>ff", function()
	fzf_lua.files({ fd_opts = "--no-ignore" })
end, { desc = "Find files in from CWD (FZF)" })

vim.keymap.set("n", "<leader>fF", function()
	fzf_lua.files()
end, { desc = "Find files in from CWD (FZF)" })

vim.keymap.set("n", "<leader>fh", function()
	fzf_lua.oldfiles()
end, { desc = "Find files by history (FZF)" })

vim.keymap.set("n", "<leader>fg", function()
	fzf_lua.live_grep()
end, { desc = "Find files by grep (FZF)" })

vim.keymap.set("n", "<leader>fqq", function()
	fzf_lua.quickfix()
end, { desc = "Show quickfixes (FZF)" })

vim.keymap.set("n", "<leader>fqs", function()
	fzf_lua.quickfix_stack()
end, { desc = "Show quickfix stack (FZF)" })

vim.keymap.set("n", "<leader>fl", function()
	fzf_lua.loclist()
end, { desc = "Show location list (FZF)" })

vim.keymap.set("n", "<leader>fi", function()
	fzf_lua.lines()
end, { desc = "Show lines (FZF)" })

vim.keymap.set("n", "<leader>fs", function()
	fzf_lua.treesitter()
end, { desc = "Show treesitter (FZF)" })

vim.keymap.set("n", "<leader>fb", function()
	fzf_lua.buffers()
end, { desc = "View opened buffers (FZF)" })

vim.keymap.set("n", "<leader>ft", function()
	fzf_lua.tabs()
end, { desc = "Show opened tabs (FZF)" })

vim.keymap.set("n", "<leader>fu", function()
	fzf_lua.spell_suggest()
end, { desc = "Suggest words (FZF)" })

vim.keymap.set("n", "<leader>fm", function()
	fzf_lua.marks()
end, { desc = "List marks (FZF)" })

vim.keymap.set("n", "<leader>fj", function()
	fzf_lua.jumps()
end, { desc = "List jumps (FZF)" })

vim.keymap.set("n", "<leader>fr", function()
	fzf_lua.registers()
end, { desc = "List registers (FZF)" })

vim.keymap.set("n", "<leader>fk", function()
	fzf_lua.keymaps()
end, { desc = "Search for keymaps (FZF)" })

vim.keymap.set({ "n", "v", "i" }, "<C-x><C-p>", function()
	require("fzf-lua").complete_path()
end, { silent = true, desc = "Fuzzy complete path" })

vim.keymap.set({ "n", "v", "i" }, "<C-x><C-f>", function()
	require("fzf-lua").complete_file({
		cmd = "rg --files",
		winopts = { preview = { hidden = true } },
	})
end, { silent = true, desc = "Fuzzy complete file" })

-- ##############
-- LSP + Diagnostics functions
-- ##############

vim.keymap.set("n", "<leader>lr", function()
	require("fzf-lua").lsp_references()
end, { desc = "Find references (FZF LSP)" })

vim.keymap.set("n", "<leader>ld", function()
	require("fzf-lua").lsp_definitions()
end, { desc = "Go to definitions (FZF LSP)" })

vim.keymap.set("n", "<leader>lD", function()
	require("fzf-lua").lsp_declarations()
end, { desc = "Go to declarations (FZF LSP)" })

vim.keymap.set("n", "<leader>li", function()
	require("fzf-lua").lsp_implementations()
end, { desc = "Find implementations (FZF LSP)" })

vim.keymap.set("n", "<leader>ls", function()
	require("fzf-lua").lsp_document_symbols()
end, { desc = "List all symbols in current buffer (FZF LSP)" })

vim.keymap.set("n", "<leader>lS", function()
	require("fzf-lua").lsp_workspace_symbols()
end, { desc = "Search workspace symbols (FZF LSP)" })

vim.keymap.set("n", "<leader>le", function()
	require("fzf-lua").diagnostics_document()
end, { desc = "Show document diagnostics (FZF LSP)" })

vim.keymap.set("n", "<leader>lw", function()
	require("fzf-lua").diagnostics_workspace()
end, { desc = "Show workspace diagnostics (FZF LSP)" })

vim.keymap.set("n", "<leader>lc", function()
	fzf_lua.lsp_code_actions()
end, { desc = "List code actions (FZF LSP)" })

vim.keymap.set("n", "<leader>lt", function()
	require("fzf-lua").lsp_typedefs()
end, { desc = "Go to type definitions (FZF LSP)" })

vim.keymap.set("n", "<leader>lh", function()
	require("fzf-lua").lsp_hover()
end, { desc = "Show hover information (FZF LSP)" })
