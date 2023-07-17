return {
	"voldikss/vim-translator",
	event = "BufRead",
	config = function()
		vim.keymap.set('n', 'ts', "<cmd>Translate<cr>")
		vim.keymap.set('n', 'tS', "<cmd>TranslateV<cr><c-w><c-p>")
	end,

}
