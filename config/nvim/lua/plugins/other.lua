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
    'sedm0784/vim-resize-mode',
    config = function()
      -- When vim is resized, equalize the splits
      vim.api.nvim_create_autocmd({ "VimResized" }, {
        pattern = "*",
        callback = function()
          local ft = vim.bo.filetype

          if ft ~= "Avante" then
            vim.cmd("tabdo wincmd =")
          end
        end,
      })
    end
  },
}
