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
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files" })
    vim.keymap.set("n", "<leader>fs", builtin.oldfiles, { desc = "Previous files" })
    vim.keymap.set("n", "<leader>fr", builtin.buffers, { desc = "Open buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Grep word below cursor" })
  end,
}
