return {
	{
		"kevinhwang91/nvim-hlslens",
		config = function()
			require('hlslens').setup()
			local kopts = { noremap = true, silent = true }
			vim.api.nvim_set_keymap('n', '=',
				[[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
				kopts)
			vim.api.nvim_set_keymap('n', '-',
				[[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
				kopts)
			vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
			vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
			vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
			vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
			vim.api.nvim_set_keymap('n', '<Leader><CR>', '<Cmd>noh<CR>', kopts)
		end
	},
	-- 	{
	-- 		"pechorin/any-jump.vim",
	-- 		config = function()
	-- 			vim.keymap.set("n", "<C-j>", ":AnyJump<CR>", { noremap = true })
	-- 			vim.keymap.set("x", "<C-j>", ":AnyJumpVisual<CR>", { noremap = true })
	-- 			vim.g.any_jump_disable_default_keybindings = true
	-- 			vim.g.any_jump_window_width_ratio = 0.9
	-- 			vim.g.any_jump_window_height_ratio = 0.9
	-- 		end
	-- 	}
	{
		"nvim-lua/plenary.nvim"
	},
	{
		"nvim-pack/nvim-spectre",
		config = function()
			vim.keymap.set('n', '<leader>f', '<cmd>lua require("spectre").open()<CR>', {
				desc = "Open Spectre"
			})
			vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
				desc = "Search current word"
			})
			vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
				desc = "Search current word"
			})
			vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
				desc = "Search on current file"
			})
		end

	}
}
