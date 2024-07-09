-- create file
vim.api.nvim_set_keymap(
	"n",
	"<leader>a",
	'<cmd>lua require("core.helpers").create_file()<CR>',
	{ noremap = true, silent = true }
)

-- create dir
vim.api.nvim_set_keymap(
	"n",
	"<leader>d",
	'<cmd>lua require("core.helpers").create_dir()<CR>',
	{ noremap = true, silent = true }
)

-- hop
vim.api.nvim_set_keymap(
	"n",
	"<leader>b",
	'<cmd>lua require("core.helpers").hop()<CR>',
	{ noremap = true, silent = true }
)
