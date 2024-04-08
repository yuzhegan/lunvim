-- local compileRun = function()
-- 	vim.cmd("w")
-- 	-- check file type
-- 	local ft = vim.bo.filetype
-- 	if ft == "dart" then
-- 		vim.cmd(":FlutterRun -d " .. vim.g.flutter_default_device .. " " .. vim.g.flutter_run_args .. "<CR>")
-- 	elseif ft == "markdown" then
-- 		vim.cmd(":MarkdownPreview")
-- 	elseif ft == "go" then
-- 		vim.cmd("set splitbelow")
-- 		vim.cmd("sp")
-- 		vim.cmd("term go run %")
-- 	elseif ft == "vimwiki" then
-- 		vim.cmd(":MarkdownPreview")
-- 	elseif ft == "html" then
-- 		vim.cmd(":MarkdownPreview")
-- 	elseif ft == "javascript" then
-- 		vim.cmd("set splitbelow")
-- 		vim.cmd("sp")
-- 		vim.cmd("term node %")
-- 	elseif ft == "python" then
-- 		vim.cmd("set splitbelow")
-- 		vim.cmd("sp")
-- 		vim.cmd("term python3 %")
-- 	end
-- end
--
-- vim.keymap.set('n', 'r', compileRun, { silent = true })
--



local split = function()
	vim.cmd("set splitbelow")
	vim.cmd("sp")
	vim.cmd("res -5")
end
local compileRun = function()
	vim.cmd("w")
	-- check file type
	local ft = vim.bo.filetype
	if ft == "dart" then
		vim.cmd(":FlutterRun -d " .. vim.g.flutter_default_device .. " " .. vim.g.flutter_run_args)
	elseif ft == "markdown" then
		vim.cmd(":MarkdownPreview")
	elseif ft == 'c' then
		split()
		vim.cmd("term gcc % -o %< && ./%< && rm %<")
	elseif ft == 'javascript' then
		split()
		vim.cmd("term node %")
	elseif ft == 'lua' then
		split()
		vim.cmd("term luajit %")
	elseif ft == 'tex' then
		vim.cmd(":VimtexCompile")
	elseif ft == 'python' then
		split()
		vim.cmd("term python3 %")
	elseif ft == "go" then
		vim.cmd("term go run %")
	elseif ft == "vimwiki" then
		vim.cmd(":MarkdownPreview")
	end
end

vim.keymap.set('n', 'r', compileRun, { silent = true })
