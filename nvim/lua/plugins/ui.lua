return {
	{
		"mellow-theme/mellow.nvim",
		config = function()
			vim.g.mellow_italic_functions = false
			vim.g.mellow_bold_functions = true

			vim.cmd([[ colorscheme mellow ]])
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat",
					"NvimTreeNormal",
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
				},
			})
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function() end,
	},
}
