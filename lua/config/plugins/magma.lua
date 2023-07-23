-- selcet the magma cell

return {
	-- jupyter nvim
	"dccsillag/magma-nvim",
	build = ":UpdateRemotePlugins",
	config = function()
		vim.cmd([[nnoremap <silent> <leader>mk :MagmaInit Python3<CR>
		nnoremap <silent> <leader>m  :MagmaEvaluateOperator<CR>
		nnoremap <silent> <leader>mm :MagmaEvaluateLine<CR>
		xnoremap <silent> <leader>m  :<C-u>MagmaEvaluateVisual<CR>
		nnoremap <expr> <Leader>r nvim_exec('MagmaEvaluateOperator', v:true)
		nnoremap <silent> <leader>mc :MagmaReevaluateCell<CR>
		nnoremap <silent> <leader>md :MagmaDelete<CR>
		nnoremap <silent> <leader>mo :MagmaShowOutput<CR>
		nnoremap <silent> <leader>ms :MagmaSave<CR>

		" let g:magma_automatically_open_output = v:false
		" let g:magma_image_provider = "ueberzug"
		" let g:magma_save_path = "~/tmp/magma"

		]])
		vim.g.magma_image_provider = "ueberzug"
		vim.g['magma_automatically_open_output'] = false
		vim.g.magma_copy_output = false
		vim.keymap.set('n', '<leader>rr', ':normal V<CR>/# %%<CR>:<C-u>MagmaEvaluateVisual<CR>:nohlsearch<CR>:normal n<CR>')
		-- function runcell()
		-- 	vim.cmd(':V')
		-- 	vim.cmd(':python3 ipython_cell.jump_next_cell()')
		-- end

		-- vim.keymap.set('n', '<leader>rr', runcell())
	end,

}
