-- https://github.com/numToStr/Comment.nvim
return {
  "numToStr/Comment.nvim",
  opts = {},
  lazy = false,
  config = function()
    local comment = require("Comment")

    comment.setup({})
  end,
}
