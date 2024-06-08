-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/pmizio/typescript-tools.nvim 
-- https://github.com/kosayoda/nvim-lightbulb
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "pmizio/typescript-tools.nvim",
    "nvim-telescope/telescope.nvim",
    "kosayoda/nvim-lightbulb",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    require("nvim-lightbulb").setup({
      autocmd = { enabled = true }
    })

    local on_attach = function(client, bufnr)
      local keymap = vim.keymap
      local opts = { noremap = true, silent = true, buffer = bufnr }

      opts.desc = "Show LSP definitions"
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

      opts.desc = "Go to declaration"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

      opts.desc = "Show LSP references"
      keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)

      opts.desc = "Show LSP implementations"
      keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", opts)

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", opts)
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()
    capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
    }

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

-- disabled since it complains about transactions in postgresql
--    lspconfig["sqlls"].setup({
--      capabilities = capabilities,
--      on_attach = on_attach,
--      root_dir = function() return vim.loop.cwd() end,
--      settings = {
--        adapter = "postgres",
--      },
--    })

    lspconfig["yamlls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["jsonls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["biome"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      root_dir = function() return vim.loop.cwd() end,
    })

    lspconfig["unocss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["gopls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      root_dir = function() return vim.loop.cwd() end,
    })

    -- trying typescript tools as an alterative to tsserver lsp
    -- require("typescript-tools").setup({
    --   on_attach = on_attach,
    --   settings = {
    --     expose_as_code_action = 'all',
    --     tsserver_file_preferences = {
    --       importModuleSpecifierPreference = 'non-relative',
    --     },
    --     tsserver_format_options = {
    --     },
    --   },
    -- })

    -- required to make the lsp work with vue files
    local mason_registry = require('mason-registry')
    local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'

    -- https://github.com/typescript-language-server/typescript-language-server/blob/master/docs/configuration.md
    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      init_options = {
        plugins = {
          {
            name = '@vue/typescript-plugin',
            location = vue_language_server_path,
            languages = { 'vue' },
          },
        },
        tsserver = {
          importModuleSpecifierPreference = 'non-relative',
        },
      },
      filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    })

    lspconfig["volar"].setup({
      capabilities = capabilities,
      on_attach= on_attach,
    })
  end,
}
