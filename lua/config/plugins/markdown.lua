return {
	{
		"iamcco/markdown-preview.nvim",
		ft = { "markdown", "vimwiki" },
		build = "cd app && yarn install",
		config = function()
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_filetypes = { 'markdown', 'vimwiki' }
			vim.g.mkdp_theme = 'dark'
		end,
	},

}
