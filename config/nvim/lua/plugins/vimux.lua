return {
	'preservim/vimux',
	config = function()
		vim.g.VimuxOrientation = "hb"
		vim.keymap.set('n', '<leader>z', ":VimuxTogglePane<cr>", { silent = true })
		vim.keymap.set('n', '<leader>vo', ":VimuxOpenRunner<cr>", { silent = true })
	end
}
