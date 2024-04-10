return {
  "mhartington/formatter.nvim",
  config = function()
    local formatter = require("formatter")
    local filetypes = require("formatter.filetypes")
    local defaults = require("formatter.defaults")

    -- config
    formatter.setup({
      filetype = {
        html = {
          defaults.biome,
        },
        css = {
          defaults.biome,
        },
        javascript = {
          defaults.biome,
        },
        typescript = {
          defaults.biome,
        },
        vue = {
          defaults.prettier,
        },
        yaml = {
          defaults.prettier,
        },
        json = {
          defaults.biome,
        },
        sql = {
          filetypes.sql.sqlfluff,
        }
      }
    })

    -- keybinds 
    vim.keymap.set('n', '<leader>fm', '<cmd>Format<CR>', { desc = "Format file" })
  end,
}
