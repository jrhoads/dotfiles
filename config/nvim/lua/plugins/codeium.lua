return {
    'Exafunction/codeium.vim',
    config = function()
        vim.g.surround_no_insert_mappings = 1
        vim.g.codeium_disable_mappings = 1
        vim.g.codeium_no_map_tab = 1
        vim.keymap.set('i', '<C-g>', "codeium#Accept()",
        { silent = true, script = true, nowait= true, expr = true })
        vim.keymap.set('i', '<C-b>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })

    end
}
