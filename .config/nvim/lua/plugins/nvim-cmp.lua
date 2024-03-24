return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim",
  },
  event = { "InsertEnter" },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    cmp.setup({
      completion = {
        completeopt = "menuone,noselect"
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" }
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol_text',
          maxwidth = 100,
          ellipsis_char = '...',
          show_labelDetails = true,
          before = function (entry, vim_item)
            return vim_item
          end,
          menu = ({
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            path = "[Path]",
            buffer = "[Buffer]",
          }),
        }),
      },
      experimental = {
        ghost_text = true
      },
    })

    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })
  end,
}
