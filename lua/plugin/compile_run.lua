local compileRun = function()
	vim.cmd("w")
	-- check file type
	local ft = vim.bo.filetype
	if ft == "dart" then
		vim.cmd(":FlutterRun -d " .. vim.g.flutter_default_device .. " " .. vim.g.flutter_run_args .. "<CR>")
	elseif ft == "markdown" then
		vim.cmd(":MarkdownPreview")
	elseif ft == "vimwiki" then
		vim.cmd(":MarkdownPreview")
	elseif ft == "python" then
		vim.cmd("set splitbelow")
		vim.cmd("sp")
		vim.cmd("term python %")
	end
end

vim.keymap.set('n', 'r', compileRun, { silent = true })
