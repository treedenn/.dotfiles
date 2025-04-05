-- https://github.com/zbirenbaum/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,
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
      panel = { enabled = false },
    })
  end,
}
