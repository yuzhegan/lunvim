vim.cmd([[ func SetPythonTitle()
  "call setline(1,"# -*- coding: utf-8 -*-")
  call setline(1,"# encoding='utf-8")
  call append(line("."), "")
  call append(line(".")+1, "\# @Time: ".strftime("%Y-%m-%d",localtime()))
  call append(line(".")+2, "\# @File: ".("%"))
	call append(line(".")+3, "#!/usr/bin/env")
	"call append(line(".")+4, "\# @Description: ")
	call append(line(".")+4, "from icecream import ic")
	"call append(line(".")+5, "import sys")
	call append(line(".")+5, "import os")
	" call append(line(".")+6, "os.chdir(os.path.abspath(os.path.dirname(__file__)))")
	" call append(line(".")+7, "#change cwd to current file dir")
 endfunc
]])


vim.cmd([[ autocmd BufNewFile *py exec ":call SetPythonTitle()"]])
vim.cmd([[ autocmd BufNewFile * normal G o]])


return {
	{
		-- jupyter ipython
		"jpalardy/vim-slime",
		ft = "python",
		dependencies = { "hanschen/vim-ipython-cell" },

		config = function()
			vim.cmd([[let g:slime_target = "tmux"]])
			vim.cmd([[" escape
			nnoremap ,q o<escape>^i# %%<CR>
			inoremap ,q <escape>o<escape>^i# %%<CR>
			nnoremap ,Q Go<escape>^i# %%<CR>
			inoremap ,q <escape>Go<escape>^i# %%<CR>
			let g:ipython_cell_prefer_external_copy = 1
			"let g:ipython_cell_regex = 1
			"let g:ipython_cell_tag = '# %%( [^[].*)?'


			source ~/.config/nvim/after/ftplugin/python.vim
			augroup ipython_cell_highlight
					autocmd!
					autocmd ColorScheme * highlight IPythonCell ctermbg=238 guifg=darkgrey guibg=#444d56
			augroup END

		]])
			-- python insert titile
		end,

	},

}
