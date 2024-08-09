local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Emmet
vim.g.user_emmet_expandabbr_key = "<C-y>"

-- Normal Mode
-- Quicker way to jump to the beginning of the line
map("n", "r", "0", opts)
map("n", "t", "$", opts)
-- Buffer navigation
map("n", "<S-h>", ":bnext<CR>", opts)
map("n", "<S-j>", ":bprevious<CR>", opts)

-- Split windows
map("n", "<C-s>", ":split<CR>", opts)
map("n", "<C-d>", ":vsplit<CR>", opts)
-- Close all split windows except the current window
map("n", "<S-c>", ":only<CR>", opts)
-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Visual
map("v", "<", "<gv", opts)
map("v", "<", ">gv", opts)

-- Insert
-- Quicker normal mode
map("i", "jk", "<ESC>", opts)
