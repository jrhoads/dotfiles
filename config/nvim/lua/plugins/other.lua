-- Convert my other plugins to lazy.nvim
return {
  { 'ap/vim-css-color' },
  { 'thinca/vim-visualstar' },
  -- fastFold (https://github.com/Konfekt/FastFold)
  { 'Konfekt/FastFold' },
  -- simplyFold (https://github.com/tmhedberg/SimpylFold)
  { 'tmhedberg/SimpylFold' },
  -- vim-test (https://github.com/vim-test/vim-test)
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
      vim.g.ale_lint_on_enter = 0
      vim.g.ale_lint_on_insert_leave = 0
      vim.g.ale_lint_on_filetype_changed = 0
      vim.g.ale_lint_on_text_changed = 'never'
      vim.g.ale_disable_lsp = 1
      vim.g.ale_linters = {
        python = { 'ruff', },
        javascript = { 'eslint' },
        typescript = { 'eslint' },
        graphql = { 'eslint' },
      }
      vim.g.ale_fixers = {
        ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
        python = { 'black', 'isort'},
        javascript = { 'prettier', 'eslint' },
        typescript = { 'prettier', 'eslint' },
      }
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
}
