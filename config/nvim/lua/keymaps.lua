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

keyset('n', '<Backspace>', 'ciw', { noremap = true })
keyset('n', '<Leader>ll', ':set list!<CR>', { noremap = true, silent = true })


-- movement while in isert mode
keyset("i", "<C-h>", "<left>", { noremap = true })
keyset("i", "<C-j>", "<down>", { noremap = true })
keyset("i", "<C-k>", "<up>", { noremap = true })
keyset("i", "<C-l>", "<right>", { noremap = true })

-- beginning and end of line --
keyset("n", "H", "^", { noremap = true })
keyset("n", "L", "$", { noremap = true })

-- Center the screen after scrolling up/down with Ctrl-u/d
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Center the screen on the next/prev search result with n/N
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
