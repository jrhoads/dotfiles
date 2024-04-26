vim.g.mapleader = ","
vim.g.maplocalleader = ","

local legacy_vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(legacy_vimrc)
require("load_lazy")
require("vim-options")
require("keymaps")
require("lazy").setup("plugins", { change_detection = { notify = false } })
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tmux.conf",
    command = "silent !tmux source-file ~/.tmux.conf",
})
