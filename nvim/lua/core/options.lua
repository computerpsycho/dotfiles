local opt = vim.opt

vim.g.mapleader = " "

vim.opt.listchars = { tab = "  ", trail = "·", extends = ">", precedes = "<" }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
opt["guicursor"] = ""
opt.number = true
opt.relativenumber = true
opt.list = true
opt.wrap = false
opt.termguicolors = true
