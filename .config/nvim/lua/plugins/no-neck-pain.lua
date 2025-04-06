return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  config = function()
    local screen_width = vim.o.columns
    local width = math.floor(screen_width * 0.6)

    require("no-neck-pain").setup({
      width = width,
      autocmds = {
        enableOnVimEnter = true
      },
    })
  end,
}
