return {
  "mhartington/formatter.nvim",
  config = function()
    local formatter = require("formatter")
    local util = require("formatter.util")
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
        ts = {
          defaults.biome,
        },
        vue = {
          defaults.prettier,
        },
        json = {
          defaults.biome,
        },
      }
    })

    -- keybinds 
    vim.keymap.set('n', '<leader>fm', '<cmd>Format<CR>', { desc = "Format file" })
  end,
}
