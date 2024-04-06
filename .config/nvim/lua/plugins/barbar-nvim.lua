return {
  "romgrk/barbar.nvim",
  dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.barbar_auto_setup = false

    local map = vim.keymap
    local opts = { noremap = true, silent = true }

    -- previous/next
    opts.desc = "Go to previous buffer"
    map.set("n", "<A-,>", "<cmd>BufferPrevious<CR>", opts)
    opts.desc = "Go to next buffer"
    map.set("n", "<A-.>", "<cmd>BufferNext<CR>", opts)

    -- reordering
    opts.desc = "Move buffer to previous"
    map.set("n", "<A-S-,>", "<cmd>BufferMovePrevious<CR>", opts)
    opts.desc = "Move buffer to next"
    map.set("n", "<A-S-.>", "<cmd>BufferMoveNext<CR>", opts)

    -- tabs
    opts.desc = "Go to tab 1"
    map.set("n", "<A-1>", "<cmd>BufferGoto 1<CR>", opts)
    opts.desc = "Go to tab 2"
    map.set("n", "<A-2>", "<cmd>BufferGoto 2<CR>", opts)
    opts.desc = "Go to tab 3"
    map.set("n", "<A-3>", "<cmd>BufferGoto 3<CR>", opts)
    opts.desc = "Go to tab 4"
    map.set("n", "<A-4>", "<cmd>BufferGoto 4<CR>", opts)
    opts.desc = "Go to tab 5"
    map.set("n", "<A-5>", "<cmd>BufferGoto 5<CR>", opts)
    opts.desc = "Go to tab 6"
    map.set("n", "<A-6>", "<cmd>BufferGoto 6<CR>", opts)
    opts.desc = "Go to tab 7"
    map.set("n", "<A-7>", "<cmd>BufferGoto 7<CR>", opts)
    opts.desc = "Go to tab 8"
    map.set("n", "<A-8>", "<cmd>BufferGoto 8<CR>", opts)
    opts.desc = "Go to tab 9"
    map.set("n", "<A-9>", "<cmd>BufferGoto 9<CR>", opts)
    opts.desc = "Go to last tab"
    map.set("n", "<A-0>", "<cmd>BufferLast<CR>", opts)

    -- pinning
    opts.desc = "Pin tab"
    map.set("n", "<A-p>", "<cmd>BufferPin<CR>", opts)
    opts.desc = "Unpin tab"
    map.set("n", "<A-c>", "<cmd>BufferClose<CR>", opts)

    opts.desc = "Magic buffer pick"
    map.set("n", "<C-p>", "<cmd>BufferPick<CR>", opts)

    -- ordering
    opts.desc = "Order buffers by number"
    map.set("n", "<leader>bob", "<cmd>BufferOrderByBufferNumber<CR>", opts)
    opts.desc = "Order buffers by directory"
    map.set("n", "<leader>bod", "<cmd>BufferOrderByDirectory<CR>", opts)
    opts.desc = "Order buffers by language"
    map.set("n", "<leader>bol", "<cmd>BufferOrderByLanguage<CR>", opts)
    opts.desc = "Order buffers by window number"
    map.set("n", "<leader>bow", "<cmd>BufferOrderByWindowNumber<CR>", opts)
  end
}
