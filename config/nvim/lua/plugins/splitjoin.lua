return {
  'Wansmer/treesj',
  enabled=true,
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    { 'sj', function() require('treesj').toggle() end, desc = 'Toggle Split/Join' },
    { 'sk', function() require('treesj').toggle() end, desc = 'Toggle Split/Join' },
  },
  config = function()
    require('treesj').setup({
      -- Use default preset and override only max_join_length
      use_default_keymaps = false,
      max_join_length = 120,
    })
  end,
}
