return {
  "nvim-telescope/telescope-file-browser.nvim",
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      extensions = {
        file_browser = {
          hijack_netrw = true,
          mappings = {
            ["i"] = {

            },
            ["n"] = {

            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")

    vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true, desc = "Open File Browser with path in current buffer" })
    vim.keymap.set("n", "<space>fB", ":Telescope file_browser", { noremap = true, desc = "Open File Browser" })
  end,
}
