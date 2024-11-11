return{
    {
        'lambdalisue/fern.vim',
        dependencies = {
            'lambdalisue/nerdfont.vim',
            'lambdalisue/fern-renderer-nerdfont.vim',
            'lambdalisue/fern-git-status.vim',
        },
        init = function()
            vim.g["fern#renderer"] = "nerdfont"
        end,
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.g.loaded_netrwSettings = 1
            vim.g.loaded_netrwFileHandlers = 1

            vim.keymap.set('n', '<leader><left>', ":Fern . -reveal=% -drawer -toggle<cr>", {silent = true})
            vim.keymap.set('n', '<F6>', ":Fern . -reveal=% -drawer -toggle<cr>", {silent = true})

    local function init_fern()
      local opts = {buffer = true}
      vim.keymap.set('n', '<CR>', '<Plug>(fern-action-open)', opts)
      vim.keymap.set('n', 'o', '<Plug>(fern-action-open)<C-w><C-p>', opts)
      vim.keymap.set('n', 'v', '<Plug>(fern-action-open:vsplit)<C-w><C-p>', opts)
      vim.keymap.set('n', 's', '<Plug>(fern-action-open:split)<C-w><C-p>', opts)
      vim.keymap.set('n', 'ma', '<Plug>(fern-action-new-path)', opts)
      vim.keymap.set('n', 'r', '<Plug>(fern-action-reload)', opts)
      vim.keymap.set('n', 'q', '<cmd>quit<CR>', opts)

      vim.keymap.set('n', 'H', '<Plug>(fern-action-leave)', {buffer = true, nowait = true})
      vim.keymap.set('n', 'L', '<Plug>(fern-action-enter)', {buffer = true, nowait = true})
    end

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'fern',
      group = vim.api.nvim_create_augroup('fern-custom', {clear = true}),
      callback = function()
        vim.wo.relativenumber = false
        vim.wo.number = false
        init_fern()
      end
    })

        end


    },
}
