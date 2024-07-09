-- <Leader>a
local M = {}

function M.create_file()
	local cwd = vim.fn.getcwd()
	vim.ui.input({ prompt = "Create file: ", default = cwd .. "/" }, function(input)
		if input then
			vim.cmd("edit " .. input)
		end
	end)
end

function M.create_dir()
	local cwd = vim.fn.getcwd()
	vim.ui.input({ prompt = "Create dir: ", default = cwd .. "/" }, function(input)
		if input then
			vim.fn.mkdir(input, "p")
			vim.cmd("edit " .. input)
		end
	end)
end

return M
