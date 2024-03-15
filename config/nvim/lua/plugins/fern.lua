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


            vim.keymap.set('n', '<leader>f', ":Fern . -reveal=% -drawer -toggle<cr>", {silent = true})
            vim.keymap.set('n', '<F6>', ":Fern . -reveal=% -drawer -toggle<cr>", {silent = true})
        end


    },
}
