return {
	{
		"stevearc/oil.nvim",
		dependencies = {
			"echasnovski/mini.icons",
		},
		config = function()
			require("oil").setup({
				default_file_explorer = true,
			})

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "gofumpt" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"rust",
					"go",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("nvim-autopairs").setup()
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	-- Git plugins
	{
		-- Magit-like plugin for neovim
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = function()
			require("neogit").setup({
				integrations = {
					telescope = true,
					diffview = true,
				},
				disable_hints = false,
			})

			vim.keymap.set("n", "<Leader>ng", "<CMD>Neogit<CR>", { desc = "Opens Neogit" })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local gitsigns = require("gitsigns")
			gitsigns.setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "-" },
				},
			})

			local map = vim.keymap.set
			map("n", "<Leader>hb", gitsigns.blame_line, { desc = "git [b]lame line" })
			-- add other keymaps
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = {
			"MarkdownPreviewToggle",
			"MarkdownPreview",
			"MarkdownPreviewStop",
		},
		ft = { "markdown" },
		build = "cd app && yarn install", -- requires yarn
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
	},
	{
		"mattn/emmet-vim",
	},
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			-- TODO: Configure Comment.nvim
		end,
	},
}
