return {
	"christoomey/vim-tmux-navigator",
	config = function()
		-- vim.keymap.set("n", "<leader>rr", "<cmd>CellularAutomaton make_it_rain<CR>")
		-- vim.g.tmux_navigator_no_mappings = 1
		vim.keymap.set("n", "<M-h>", "<cmd>TmuxNavigateLeft<CR>")
		vim.keymap.set("n", "<M-j>", "<cmd>TmuxNavigateDown<CR>")
		vim.keymap.set("n", "<M-k>", "<cmd>TmuxNavigateUp<CR>")
		vim.keymap.set("n", "<M-l>", "<cmd>TmuxNavigateRight<CR>")
		vim.keymap.set("n", "<M-p>", "<cmd>TmuxNavigatePrevious<CR>")
	end,
}
