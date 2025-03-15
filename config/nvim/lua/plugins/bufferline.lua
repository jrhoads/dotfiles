return {
    {
      'akinsho/bufferline.nvim',
      version = "*",
      dependencies = 'nvim-tree/nvim-web-devicons',
      event = "BufReadPost",
      enabled = true,
      opts = {
        options = {
          separator_style = 'slant',
          show_buffer_close_icons = false,
          show_close_icon = false,
        }
      }
    }
}
