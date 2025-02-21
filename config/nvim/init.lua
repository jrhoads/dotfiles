-- init.lua
-- core settings first
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- legacy vim config
local legacy_vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(legacy_vimrc)

-- load modules
require("load_lazy")
require("vim-options")
require("keymaps")
require("spelling_fix")
require("autocmds")

-- plugin management
require("lazy").setup("plugins", { change_detection = { notify = false } })

-- ui tweaks
vim.cmd.colorscheme('slate')
vim.api.nvim_set_hl(0, "Comment", { fg = "green", italic=true})
vim.api.nvim_set_hl(0, "Keyword", { italic=true })
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

-- Make split borders subtle
vim.opt.fillchars = "vert:│,horiz:─"
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#808080', bg = 'NONE' })

-- autocommands last
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tmux.conf",
    command = "silent !tmux source-file ~/.tmux.conf",
})
