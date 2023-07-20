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
vim.cmd([[
function GetJupytextFold(linenum)
    if getline(a:linenum) =~ "^#\\s%%"
        " start fold
        return ">1"
    elseif getline(a:linenum + 1) =~ "^#\\s%%"
        return "<1"
    else
        return "-1"
    endif
endfunction]])
return {
	-- "dccsillag/magma-nvim",
	"parsiad/magma-nvim",
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
		" https://gist.github.com/BlueDrink9/f40b3c816e5bcb349adcbc22eb753518
		setlocal foldexpr=GetJupytextFold(v:lnum)
		]])
	end,

}
