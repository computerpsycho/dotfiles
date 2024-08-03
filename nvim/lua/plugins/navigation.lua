return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({ filters = { dotfiles = false } })
			vim.keymap.set("n", "<Leader>ee", "<CMD>NvimTreeToggle<CR>")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			local map = vim.keymap.set

			map("n", "<Leader>ff", builtin.find_files, {})
			map("n", "<Leader>fg", builtin.live_grep, {})
			map("n", "<Leader>fb", builtin.buffers, {})
			map("n", "<Leader>fh", builtin.help_tags, {})
		end,
	},
}
