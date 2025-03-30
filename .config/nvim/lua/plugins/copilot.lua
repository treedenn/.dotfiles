-- https://github.com/zbirenbaum/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = false,  -- Prevent auto-triggering suggestions (optional)
        keymap = {
          accept = false,      -- Disable default `<Tab>` keymap
          accept_word = false, -- Disabled by default
          accept_line = false, -- Disable by default
          next = false,        -- Disable `<M-]>` (next suggestion)
          prev = false,        -- Disable `<M-[>` (previous suggestion)
          dismiss = false,     -- Disable `<C-]>` (dismiss suggestion)
        },
      },
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuOpen",
      callback = function()
        vim.b.copilot_suggestion_hidden = true
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuClose",
      callback = function()
        vim.b.copilot_suggestion_hidden = false
      end,
    })
  end,
}
