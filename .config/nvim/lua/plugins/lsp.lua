-- https://github.com/williamboman/mason.nvim
-- https://mason-registry.dev/registry/list
-- https://github.com/neovim/nvim-lspconfig LSP configuration with mason as the lsp manager and blink as the completion source
return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"williamboman/mason.nvim",
			"saghen/blink.cmp",
			"artemave/workspace-diagnostics.nvim", -- Used to populate workspace diagnostics for typescript
		},
		opts = {
			servers = {
				lua_ls = {},
				gopls = {},
				ts_ls = {
					on_attach = function(client, bufnr)
						-- Create a command "OrganizeImports" to organize imports
						vim.api.nvim_create_user_command("OrganizeImports", function()
							local tsserver = vim.lsp.get_clients({ name = "ts_ls", bufnr = bufnr })[1]
							if tsserver then
								tsserver.request("workspace/executeCommand", {
									command = "_typescript.organizeImports",
									arguments = { vim.api.nvim_buf_get_name(0) },
								}, nil, 0)
							else
								vim.notify("tsserver is not attached to this buffer", vim.log.levels.WARN)
							end
						end, {})

						-- Invoke the command on save
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							callback = function()
								vim.cmd("OrganizeImports")
							end,
						})

						-- Add a keymap for the command
						vim.keymap.set("n", "<leader>ci", "<cmd>OrganizeImports<cr>", { desc = "Organize Imports" })

						-- Create a command "PopulateWorkspaceDiagnostics" to populate workspace diagnostics
						vim.api.nvim_create_user_command("PopulateWorkspaceDiagnostics", function()
							require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
						end, {})

						-- Invoke the command on attach
						vim.cmd("PopulateWorkspaceDiagnostics")

						-- Add keymap for populate files to typescript LSP
						vim.keymap.set(
							"n",
							"<leader>cw",
							"<cmd>PopulateWorkspaceDiagnostics<cr>",
							{ desc = "Populate Workspace Diagnostics (Typescript)" }
						)
					end,
					filetypes = {
						"typescript",
						"javascript",
						"javascriptreact",
						"typescriptreact",
						"vue",
					},
				},
				tailwindcss = {},
				cssls = {},
				volar = {},
				sqls = {},
				vacuum = {},
				ansiblels = {},
			},
		},
		config = function(_, opts)
			-- Install the servers
			local servers = {}
			for server, _ in pairs(opts.servers) do
				table.insert(servers, server)
			end

			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})

			-- Dynamic configurations

			---- Typescript with Volar
			local mason_registry = require("mason-registry")
			local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
				.. "/node_modules/@vue/language-server"

			opts.servers.ts_ls.init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = vue_language_server_path,
						languages = { "vue" },
					},
				},
			}

			-- Configure the servers
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},
}
