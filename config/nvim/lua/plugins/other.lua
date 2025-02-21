-- Convert my other plugins to lazy.nvim
return {
  {
    'ap/vim-css-color',
    event = { "BufReadPost", "BufNewFile" },
    desc = "Preview colors in source code"
  },
  {
    'thinca/vim-visualstar',
    event = "VeryLazy",
    desc = "Improved * and # searching"
  },
  {
    'Konfekt/FastFold',
    event = "BufReadPost",
    desc = "Speed up Vim by updating folds only when called-for"
  },
  {
    'tmhedberg/SimpylFold',
    ft = "python",
    desc = "Simple, correct folding for Python"
  },
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
    desc = "Asynchronous Lint Engine",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      -- Signs and UI
      vim.g.ale_sign_error = '✘'
      vim.g.ale_sign_warning = '⚠'
      vim.g.ale_sign_info = '🛈'
      vim.g.ale_sign_style_error = '💡'
      vim.g.ale_sign_style_warning = '⚡'

      -- Performance settings
      vim.g.ale_fix_on_save = 1
      vim.g.ale_lint_on_enter = 0
      vim.g.ale_lint_on_insert_leave = 0
      vim.g.ale_lint_on_filetype_changed = 0
      vim.g.ale_lint_on_text_changed = 'never'
      vim.g.ale_disable_lsp = 1

      -- Virtual text settings
      vim.g.ale_virtualtext_cursor = 1
      vim.g.ale_virtualtext_prefix = '❯❯ '

      -- Linters configuration
      vim.g.ale_linters = {
        python = { 'ruff' },
        javascript = { 'eslint' },
        typescript = { 'eslint' },
        graphql = { 'eslint' },
      }

      -- Fixers configuration
      vim.g.ale_fixers = {
        ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
        python = { 'black', 'isort'},
        -- Enable these if you work with JavaScript/TypeScript
        -- javascript = { 'prettier', 'eslint' },
        -- typescript = { 'prettier', 'eslint' },
      }

      -- Additional settings for better UX
      vim.g.ale_floating_preview = 1
      vim.g.ale_hover_to_floating_preview = 1
      vim.g.ale_detail_to_floating_preview = 1
    end
  },
  {
    'AndrewRadev/splitjoin.vim',
    desc = "Switch between single-line and multiline forms of code",
    keys = {
      { "sk", ":SplitjoinSplit<cr>", desc = "Split code block" },
      { "sj", ":SplitjoinJoin<cr>", desc = "Join code block" },
    },
    config = function()
      vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
      vim.g.splitjoin_trailing_comma = 1
      vim.g.splitjoin_python_brackets_on_separate_lines = 1
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
