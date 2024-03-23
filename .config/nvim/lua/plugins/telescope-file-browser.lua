return {
  "nvim-telescope/telescope-file-browser.nvim",
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      },
    }) 

    telescope.load_extension("file_browser")

    vim.keymap.set("n", "<space>fb", ":Telescope file_browser", { noremap = true, desc = "Open File Browser" })
    vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true, desc = "Open File Browser with path in current buffer" })
  end,
}
