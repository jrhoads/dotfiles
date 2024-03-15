local Util = require("util")
return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        lazy = true,
        cmd = { "ToggleTerm" },
        keys = {
            {
                "<leader>Tf",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, 0, vim.loop.cwd(), "float")
                end,
                desc = "ToggleTerm (float root_dir)",
            },
        },
        options = {
                open_mapping = [[<c-\>]],
                direction = "float",
                -- close_on_exit = true,
                -- shell = vim.o.shell,
                -- float_opts = {
                --     border = "curved",
                --     winblend = 0,
                --     highlights = {
                --         border = "Normal",
                --         background = "Normal",
                --     },
                -- },
        },
        config=true
        -- config = function()
        --     require("toggleterm").setup()
            -- function _G.set_terminal_keymaps()
            --     local opts = {noremap = true}
            --     vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
            --     vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
            --     vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
            --     vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
            --     vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
            --     vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
            -- end
            --
            -- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
            -- vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', { noremap = true })
        -- end
    }
}
