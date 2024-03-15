return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
            },
          },
          sorting_strategy = "ascending",
          --- other configs
          mappings = {
            n = {
              ['<c-d>'] = require('telescope.actions').delete_buffer,
              ['<c-c>'] = require('telescope.actions').close
            }, -- n
            i = {
              ['<c-d>'] = require('telescope.actions').delete_buffer,
              ['<leader>b'] = require('telescope.actions').close
            } -- i
          }, -- mappings
        }, -- defaults
          pickers = {
            find_files = {
              hidden = true,
              -- needed to exclude some files & dirs from general search
              -- when not included or specified in .gitignore
              find_command = {
                "rg",
                "--files",
                "--hidden",
                "--glob=!**/.git/*",
                "--glob=!**/.idea/*",
                "--glob=!**/.vscode/*",
                "--glob=!**/build/*",
                "--glob=!**/dist/*",
                "--glob=!**/yarn.lock",
                "--glob=!**/package-lock.json",
              }, -- find_command
            }, -- find_files
          }, -- pickers
      }

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>r', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>b', builtin.buffers, {})
        vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>g', builtin.treesitter, {})
        vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
        vim.keymap.set('n', '\\', builtin.live_grep, {})
    end
  }
}
