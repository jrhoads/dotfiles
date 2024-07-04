local keyset = vim.keymap.set

keyset('n', '<Leader><TAB>', '<C-W>W', { silent = true })
keyset('n', '<Leader><S-TAB>', '<C-W>p', { silent = true })
keyset('n', '<Leader><Space>', ':bn<cr>', { silent = true })
keyset('n', '<Leader><Leader>', ':bp<cr>', { silent = true })
keyset('n', '<Leader><BS>', ':bp<cr>', { silent = true })

keyset('n', '<C-h>', '<C-w>h', { silent = true })
keyset('n', '<C-j>', '<C-w>j', { silent = true })
keyset('n', '<C-k>', '<C-w>k', { silent = true })
keyset('n', '<C-l>', '<C-w>l', { silent = true })


keyset('n', '<F1>', '<ESC>')
keyset('i', '<F1>', '<ESC>')
keyset('v', '<F1>', '<ESC>')

-- Escape from the home row
keyset('i', 'jj', '<Esc>')
keyset('i', 'jk', '<Esc>')
keyset('i', 'kj', '<Esc>')
keyset('i', 'kk', '<Esc>')

keyset('n', '<Space>', 'za', { noremap = true })
keyset('n', '<Leader>ll', ':set list!<CR>', { noremap = true, silent = true })

-- resize windows easily
keyset("n", "<down>", ":resize +2<cr>")
keyset("n", "<up>", ":resize -2<cr>")
keyset("n", "<right>", ":vertical resize +2<cr>")
keyset("n", "<left>", ":vertical resize -2<cr>")

-- movement while in isert mode
keyset("i", "<C-h>", "<left>", { noremap = true })
keyset("i", "<C-j>", "<down>", { noremap = true })
keyset("i", "<C-k>", "<up>", { noremap = true })
keyset("i", "<C-l>", "<right>", { noremap = true })

