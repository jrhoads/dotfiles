return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
	enabled = true,
        config = function()
            require("bufferline").setup({
                options = {
			separator_style = 'slant',
			show_buffer_close_icons = false,
			show_close_icon = false,

                }
            })
        end
    }
}
