-- https://github.com/numToStr/Comment.nvim
-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
return {
  "numToStr/Comment.nvim",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  lazy = false,
  config = function()
    local comment = require("Comment")
    local context = require("ts_context_commentstring")

    context.setup({
      enable_autocmd = false,
    })
    comment.setup({
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    })

    -- vim.g.skip_ts_context_commentstring_module = true
  end,
}
