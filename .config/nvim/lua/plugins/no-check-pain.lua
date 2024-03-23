return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  config = function()
    require("no-neck-pain").setup({
      width = 140,
      minSideBufferWidth = 30,
      autocmds = {
        enableOnVimEnter = true,
        enableOnTabEnter = true,
      }
    })

    vim.keymap.set("n", "<leader>zt", "<cmd>NoNeckPain<CR>", { desc = "Toggle No Neck Pain (zen mode)" })
    vim.keymap.set("n", "<leader>zu", "<cmd>NoNeckPainWidthUp<CR>", { desc = "Increase width" })
    vim.keymap.set("n", "<leader>zd", "<cmd>NoNeckPainWidthDown<CR>", { desc = "Decrease width" })
  end,
}
