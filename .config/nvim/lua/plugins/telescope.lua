-- https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sharkdp/fd",
    "nvim-tree/nvim-web-devicons",
    "BurntSushi/ripgrep",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        theme = "center",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            width = 0.5,
            preview_width = 0.55, -- percent of width above
            prompt_position = "top",
          }
        }
      },
      extensions = {
        file_browser = {
          theme = "dropdown"
        }
      },
    })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files" })
    vim.keymap.set("n", "<leader>fs", function() builtin.oldfiles({ cwd_only = true }) end, { desc = "Previous files" })
    vim.keymap.set("n", "<leader>fS", builtin.oldfiles, { desc = "Previous files (globally)" })
    vim.keymap.set("n", "<leader>fr", builtin.buffers, { desc = "Open buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Grep word below cursor" })
  end,
}
