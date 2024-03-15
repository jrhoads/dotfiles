return {
  {
    'vim-airline/vim-airline',
    enabled = false,
    config = function()
      vim.g.airline_powerline_fonts = 1
      vim.g["airline#extensions#tabline#enabled"] = 1
      vim.g["airline#extensions#tabline#formatter"] = 'unique_tail'

    end
  }

}
