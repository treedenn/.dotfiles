-- https://github.com/kevinhwang91/nvim-ufo
return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async"
  },
  config = function()
    local ftMap = {
      vim = 'indent',
      python = {'indent'},
      git = ''
    }

    local ufo = require("ufo")

    ufo.setup({
      open_fold_hl_timeout = 150,
      close_fold_kinds_for_ft = {
          default = {'imports', 'comment'},
          json = {'array'},
          c = {'comment', 'region'}
      },
      preview = {
          win_config = {
              border = {'', '─', '', '', '', '─', '', ''},
              winhighlight = 'Normal:Folded',
              winblend = 0
          },
          mappings = {
              scrollU = '<C-u>',
              scrollD = '<C-d>',
              jumpTop = '[',
              jumpBot = ']'
          }
      },
      provider_selector = function(bufnr, filetype, buftype)
          return ftMap[filetype]
      end
    })

    -- set options
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- set keymaps
    vim.keymap.set('n', 'zR', ufo.openAllFolds)
    vim.keymap.set('n', 'zM', ufo.closeAllFolds)
    vim.keymap.set('n', 'zr', ufo.openFoldsExceptKinds)
    vim.keymap.set('n', 'zm', ufo.closeFoldsWith)
    vim.keymap.set('n', 'zK', function()
      local winid = ufo.peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end)

  end
}

