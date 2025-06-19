
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.rb", "*.lua" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
    vim.opt.autoindent = true
    vim.opt.fileformat = "unix"
  end
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.py" },
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.expandtab = true
		vim.opt.autoindent = true
		vim.opt.fileformat = "unix"
	end
})

vim.g.xml_syntax_folding = 1
vim.api.nvim_create_autocmd("FileType", {
    pattern = "xml",
    callback = function()
        vim.opt_local.foldmethod = "syntax"
    end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tmux.conf",
    command = "silent !tmux source-file ~/.tmux.conf",
})
