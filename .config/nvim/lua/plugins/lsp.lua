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
		},
		opts = {
			servers = {
				lua_ls = {},
				gopls = {},
				ts_ls = {
					on_attach = function(client, bufnr)
						-- Create a command "OrganizeImports" to organize imports
						vim.api.nvim_create_user_command("OrganizeImports", function()
							local ts_lsp = vim.lsp.get_clients({ name = "ts_ls", bufnr = bufnr })[1]
							if ts_lsp ~= nil then
								ts_lsp.request("workspace/executeCommand", {
									command = "_typescript.organizeImports",
									arguments = { vim.api.nvim_buf_get_name(0) },
								}, nil, 0)
							else
								vim.notify("ts_ls is not attached to this buffer", vim.log.levels.WARN)
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
				ansiblels = {},
				vacuum = {},
				regal = {},
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
				automatic_enable = {},
				ensure_installed = servers,
			})

			-- Dynamic configurations

			---- Typescript with Volar
			local mason_registry = require("mason-registry")
			local vue_language_server_path = vim.fn.exepath("vue-language-server")
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
	-- https://github.com/ray-x/lsp_signature.nvim
	-- Show function signature while typing
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		opts = {
			-- cfg options
		},
	},
}
