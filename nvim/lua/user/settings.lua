-- https://neovim.io/doc/user/quickref.html#option-list

-- leader key is space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- show current line number and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tab to spaces and tab width
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- space indentation
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- highlight and incremental search 
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- no text wrap
vim.opt.wrap = false

-- split down or right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- mouse mode
vim.opt.mouse = "a"

-- faster searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- access to system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- cursor highlight (whole line)
vim.opt.cursorline = true

-- column line
--vim.opt.colorcolumn = "80"

-- keep x lines above or below cursor
vim.opt.scrolloff = 16

-- always show sign column
vim.opt.signcolumn = "yes"

-- 24-bit color
vim.opt.termguicolors = true

-- always show completion menu and always manual select
vim.opt.completeopt = { "menuone", "noselect" }

-- persistent undo history (even after reboot)
vim.opt.undofile = true

-- better feeling when typing and trigger CursorHold (in ms, default 4000)
vim.opt.updatetime = 50


-- Set fold settings
-- These options were recommended to feel modern by nvim-ufo
-- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
vim.opt.foldenable = true
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

--vim.opt.guicursor = {
--	"n-v-c:block", -- Normal, visual, command-line: block cursor
--	"i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
--	"r-cr:hor20", -- Replace, command-line replace: horizontal bar cursor with 20% height
--	"o:hor50", -- Operator-pending: horizontal bar cursor with 50% height
--	"a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking settings
--	"sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
--}

