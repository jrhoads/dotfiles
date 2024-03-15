return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "_" },
            topdelete = { text = " ̅" },
            changedelete = { text = "~" },
            untracked = { text = "┆" },
        },
        -- current_line_blame = true,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 600,
            ignore_whitespace = false,
            virt_text_priority = 100,
        },
        on_attach = function(buffer)
            vim.keymap.set('n', '<Leader>lb', ':Gitsigns toggle_current_line_blame<CR>', { noremap = true, silent = true })
            vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", { silent = true })
            vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>", { silent = true })
        end
    },
}
