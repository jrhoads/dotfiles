-- Convert my other plugins to lazy.nvim
return {
    { 'ap/vim-css-color' },
    { 'thinca/vim-visualstar' },
    { 'tmhedberg/SimpylFold' },
    { 'Yggdroot/hiPairs' },
    {
        'vim-test/vim-test',
        config = function()
            vim.keymap.set('n', '<leader>tm', ':TestNearest<cr>')
            vim.keymap.set('n', '<leader>tf', ':TestFile<cr>')
            vim.keymap.set('n', '<leader>ts', ':TestSuite<cr>')
        end
    },
    {
        'dense-analysis/ale',
        config = function()
            vim.g.ale_sign_error = '✘'
            vim.g.ale_sign_warning = '⚠'
            vim.g.ale_fix_on_save = 1
        end
    },
    {
        'AndrewRadev/splitjoin.vim',
        config = function()
            vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
            vim.g.splitjoin_trailing_comma = 1
            vim.g.splitjoin_python_brackets_on_separate_lines = 1
            vim.keymap.set('n', 'sk', ':SplitjoinSplit<cr>')
            vim.keymap.set('n', 'sj', ':SplitjoinJoin<cr>')
        end
    },
    {
        'sedm0784/vim-resize-mode',
        config = function()
            -- When vim is resized, equalize the splits
            vim.api.nvim_create_autocmd({ "VimResized" }, {
                pattern = "*",
                command = "wincmd ="
            })
        end
    },
    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            require("zen-mode").setup {
                vim.keymap.set('n', '<leader>m', ":ZenMode<CR>", { silent = true }),
            }
        end
    },
    {
        'szw/vim-maximizer',
        config = function()
            vim.keymap.set('n', '<leader>w', ":MaximizerToggle<CR>", { silent = true })
            vim.keymap.set('n', '<C-Space>', ":MaximizerToggle<CR>", { silent = true })
            vim.keymap.set('v', '<C-Space>', ":MaximizerToggle<CR>gv", { silent = true })
            vim.keymap.set('i', '<C-Space>', "<C-o>:MaximizerToggle<CR>", { silent = true })
        end
    },
}
