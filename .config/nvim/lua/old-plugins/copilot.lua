-- https://github.com/zbirenbaum/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    local copilot = require("copilot")
    --local panel = require("copilot.panel")
    --local suggestion = require("copilot.suggestion")

    copilot.setup({
      filetypes = {
        -- javascript = true, -- allow specific filetype
        -- typescript = true, -- allow specific filetype
        ["*"] = true, -- disable for all other filetypes and ignore default `filetypes`
      },
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end,
}
