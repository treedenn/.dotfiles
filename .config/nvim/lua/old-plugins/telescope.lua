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
    local config = require("telescope.config")
    local builtin = require("telescope.builtin")

    local vimgrep_arguments = config.values.vimgrep_arguments
    table.insert(vimgrep_arguments, "--hidden")

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
        },
        -- vimgrep_arguments = {
        --   "rg",
        --   "--follow",        -- Follow symbolic links
        --   "--hidden",        -- Search for hidden files
        --   "--no-heading",    -- Don't group matches by each file
        --   "--with-filename", -- Print the file path with the matched lines
        --   "--line-number",   -- Show line numbers
        --   "--column",        -- Show column numbers
        --   "--smart-case",    -- Smart case search
        --
        --   -- Exclude some patterns from search
        --   "--glob=!**/.git/*",
        --   "--glob=!**/.idea/*",
        --   "--glob=!**/.vscode/*",
        --   "--glob=!**/build/*",
        --   "--glob=!**/dist/*",
        --   "--glob=!**/yarn.lock",
        --   "--glob=!**/package-lock.json",
        -- },
      },
      pickers = {
        find_files = {
          follow = true,
          -- find_command = {
          --   "rg",
          --   "--files",
          --   "--hidden", -- Search for hidden files
          --
          --   -- Exclude some patterns from search
          --   "--glob=!**/.git/*",
          --   "--glob=!**/.idea/*",
          --   "--glob=!**/.vscode/*",
          --   "--glob=!**/build/*",
          --   "--glob=!**/dist/*",
          --   "--glob=!**/yarn.lock",
          --   "--glob=!**/package-lock.json",
          -- },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown"
        }
      },
    })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fF", function() builtin.find_files({ hidden = true }) end, { desc = "Find (hidden) files" })

    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files" })
    vim.keymap.set("n", "<leader>fG", function() builtin.live_grep({ hidden = true }) end, { desc = "Grep (hidden) files" })
   
    vim.keymap.set("n", "<leader>fs", function() builtin.oldfiles({ cwd_only = true }) end, { desc = "Previous files" })
    vim.keymap.set("n", "<leader>fS", function() builtin.oldfiles({ cwd_only = true, hidden = true }) end, { desc = "Previous (hidden) files" })

    vim.keymap.set("n", "<leader>fa", builtin.oldfiles, { desc = "Previous files, globally" })
    vim.keymap.set("n", "<leader>fA", function() builtin.oldfiles({ hidden = true }) end, { desc = "Previous (hidden) files, globally" })

    vim.keymap.set("n", "<leader>fr", builtin.buffers, { desc = "Open buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Grep word below cursor" })
  end,
}
