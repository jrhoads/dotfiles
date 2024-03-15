vim.opt.encoding = 'utf-8'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.visualbell = true
vim.opt.listchars = { tab = '| ', trail = '·', eol = '↴' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.laststatus = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99
vim.opt.termguicolors = true

vim.opt.background = 'dark'
vim.opt.colorcolumn = '81,82'
vim.cmd.colorscheme('slate')
vim.api.nvim_set_hl(0, "Comment", { fg = "green"})

vim.g.html_indent_tags = {li, p}
