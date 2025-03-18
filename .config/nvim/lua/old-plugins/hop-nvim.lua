-- https://github.com/smoka7/hop.nvim
return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {},
  config = function()
    local hop = require("hop")

    hop.setup({})

    -- override existing find methods
    local directions = require('hop.hint').HintDirection
    vim.keymap.set('', 'f', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
    end, { remap = true })
    vim.keymap.set('', 'F', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
    end, { remap = true })
    vim.keymap.set('', 't', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
    end, { remap = true })
    vim.keymap.set('', 'T', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
    end, { remap = true })

    -- calls with leader
    vim.keymap.set('n', '<leader>hw', '<cmd>HopWord<CR>', { desc = "Go to any word in the current buffer" })
    vim.keymap.set('n', '<leader>hc', '<cmd>HopCamelCase<CR>', { desc = "Go to any camelCase word in the current buffer" })
    vim.keymap.set('n', '<leader>hl', '<cmd>HopLine<CR>', { desc = "Go to any line" })
    vim.keymap.set('n', '<leader>hs', '<cmd>HopLineStart<CR>', { desc = "Go to any line start" })

    -- calls with comma
    vim.keymap.set('n', ',w', '<cmd>HopWord<CR>', { desc = "Go to any word in the current buffer" })
    vim.keymap.set('n', ',c', '<cmd>HopCamelCase<CR>', { desc = "Go to any camelCase word in the current buffer" })
    vim.keymap.set('n', ',l', '<cmd>HopLine<CR>', { desc = "Go to any line" })
    vim.keymap.set('n', ',s', '<cmd>HopLineStart<CR>', { desc = "Go to any line start" })

  end
}

