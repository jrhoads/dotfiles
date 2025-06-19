vim.loader.enable()
-- init.lua
-- core settings first
vim.g.mapleader = ","
vim.g.maplocalleader = ","


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
vim.api.nvim_set_hl(0, 'SnacksDashboardTitle', {fg='#FFFFFF', bold = true})
vim.api.nvim_set_hl(0, 'SnacksDashboardKey', {fg='#FFFFFF', bold = true})
vim.api.nvim_set_hl(0, 'SnacksDashboardHeader', {fg='coral'})
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#808080', bg = 'NONE' })

-- -- Make split borders subtle
vim.opt.fillchars = "vert:│,horiz:─"
