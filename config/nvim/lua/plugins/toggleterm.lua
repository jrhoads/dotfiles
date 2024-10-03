return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()

            require("toggleterm").setup( {
                open_mapping = [[<M-`>]],
                direction = "float",
                -- close_on_exit = true,
                shell = vim.o.shell,
                float_opts = {
                    border = "curved",
                    winblend = 0,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    },
                },

            })
            function _G.set_terminal_keymaps()
                local opts = {noremap = true}
                vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-t>', [[<C-\><C-n><C-W>l]], opts)
            end

            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
            vim.keymap.set('n', '<m-`>', ':ToggleTerm<CR>', { noremap = true, silent = true })
            vim.keymap.set('n', '<c-t>', ':ToggleTerm<CR>', { noremap = true, silent = true })
	    local Terminal  = require('toggleterm.terminal').Terminal
	    local lazygit = Terminal:new({
		    cmd = "lazygit",
		    dir = "git_dir",
		    direction = "float",
		    float_opts = {
			    border = "double",
		    },
		    -- function to run on opening the terminal
		    on_open = function(term)
			    vim.cmd("startinsert!")
			    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
		    end,
		    -- function to run on closing the terminal
		    on_close = function(term)
			    vim.cmd("startinsert!")
		    end,
	    })

	    function _lazygit_toggle()
		    lazygit:toggle()
	    end

	    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})


        end
    }
}
