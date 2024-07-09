return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		local keymap = vim.keymap

		nvimtree.setup({
			view = {
				width = 40,
			},
		})

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
	end,
}
