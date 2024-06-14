vim.keymap.set('n', '<Leader><TAB>', '<C-W>W', { silent = true })
vim.keymap.set('n', '<Leader><S-TAB>', '<C-W>p', { silent = true })
vim.keymap.set('n', '<Leader><Space>', ':bn<cr>', { silent = true })
vim.keymap.set('n', '<Leader><Leader>', ':bp<cr>', { silent = true })
vim.keymap.set('n', '<Leader><BS>', ':bp<cr>', { silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })


vim.keymap.set('n', '<F1>', '<ESC>')
vim.keymap.set('i', '<F1>', '<ESC>')
vim.keymap.set('v', '<F1>', '<ESC>')

-- Escape from the home row
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'kk', '<Esc>')

vim.keymap.set('n', '<Space>', 'za', { noremap = true })
vim.keymap.set('n', '<Leader>ll', ':set list!<CR>', { noremap = true, silent = true })
