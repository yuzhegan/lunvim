-- return {
-- 	{
-- 		"iamcco/markdown-preview.nvim",
-- 		ft = { "markdown", "vimwiki" },
-- 		build = "cd app && yarn install",
-- 		config = function()
-- 			vim.g.mkdp_auto_start = 0
-- 			vim.g.mkdp_filetypes = { 'markdown', 'vimwiki' }
-- 			vim.g.mkdp_theme = 'dark'
-- 		end,
-- 	},
--
-- }
vim.cmd(
	[[
function OpenMarkdownPreview (url)
		execute "silent ! edge --new-window " . a:url
		" execute "silent ! /mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe --new-window " . a:url
endfunction
]]
)

return {
	{
		"iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown", "vimwiki" },
		build = function() vim.fn["mkdp#util#install"]() end,

		config = function()
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_theme = 'dark'
			vim.g.mkdp_open_to_the_world = 1
			vim.g.mkdp_open_ip = '127.0.0.1'
			vim.g.mkdp_port = 65141
			-- vim.g.mkdp_echo_preview_url = 1
			-- function OpenMarkdownPreview(url)
			-- 	vim.cmd('silent ! edge --new-window ' .. url)
			-- 	echo(url)
			-- 	-- silent ! edge --new-window http://127.0.0.1:65141/page/1
			-- end

			vim.g.mkdp_filetypes = { 'markdown', 'vimwiki' }
			vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
		end,

	},
}
