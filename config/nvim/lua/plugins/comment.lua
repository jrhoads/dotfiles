return {
	{'numToStr/Comment.nvim',
	lazy = false,
	config = function()
		require('Comment').setup()
		vim.keymap.set('n', '<leader>cc', function()
			return vim.v.count == 0
			and '<Plug>(comment_toggle_linewise_current)'
			or '<Plug>(comment_toggle_linewise_count)'
		end, { expr = true })
		vim.keymap.set('n', '<leader>c<space>', function()
			return vim.v.count == 0
			and '<Plug>(comment_toggle_linewise_current)'
			or '<Plug>(comment_toggle_linewise_count)'
		end, { expr = true })
		vim.keymap.set('x', '<leader>cc', '<Plug>(comment_toggle_linewise_visual)')
		vim.keymap.set('x', '<leader>c<space>', '<Plug>(comment_toggle_linewise_visual)')
	end
	},
	{'JoosepAlviste/nvim-ts-context-commentstring', lazy = false},
}
