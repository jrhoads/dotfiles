return {
  {'tpope/vim-repeat'},
  {'tpope/vim-sensible'},
  {
    'tpope/vim-surround',
    init = function()
      vim.g.surround_no_insert_mappings = 1
    end,
  },
  {'tpope/vim-unimpaired'},
  {'tpope/vim-dispatch'},
  {'tpope/vim-endwise'},
  {'tpope/vim-eunuch'},
  {'tpope/vim-fugitive'}
}
