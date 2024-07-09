vim.api.nvim_set_keymap(
	"n",
	"<leader>a",
	'<cmd>lua require("core.helpers").create_file()<CR>',
	{ noremap = true, silent = true }
)
