-- function MagmaInitPython()
-- 	vim.cmd [[
--     :MagmaInit python3
--     :MagmaEvaluateArgument a=5
--     ]]
-- end
--
-- vim.cmd [[
-- :command MagmaInitPython lua MagmaInitPython()
-- ]]
--
--
return {
	"dccsillag/magma-nvim",
	branch = "sync-with-goose-fork",
	-- jupyter nvim
	-- "yuzhegan/magma",
	build = "UpdateRemotePlugins",
	config = function()
		vim.cmd([[	
		nnoremap <silent>       <leader>mk :MagmaInit Python3<CR>
		nnoremap <silent>       <leader>mm :MagmaEvaluateLine<CR>
		xnoremap <silent>       <leader>m  :<C-u>MagmaEvaluateVisual<CR>
		nnoremap <silent>       <leader>mc :MagmaReevaluateCell<CR>
		nnoremap <silent>       <leader>md :MagmaDelete<CR>
		nnoremap <silent>       <leader>mo :MagmaShowOutput<CR>
		let g:magma_automatically_open_output = v:false
		let g:magma_image_provider = "ueberzug"
		]])
	end,

}
