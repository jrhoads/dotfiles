return {
  -- incline.nvim (https://github.com/b0o/incline.nvim)
  -- lightweight floating statuslines
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = "#303270", guifg = "#a9b1d6" },
            InclineNormalNC = { guibg = "none", guifg = "#a9b1d6" },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        -- hide = { cursorline = true, only_win = true },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[*]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)

          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  { 'folke/twilight.nvim' },
  {
	  "folke/zen-mode.nvim",
	  opts = {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
		  plugins = {
			  twilight = { enabled = true},
		  }
	  },
	  config = function()
		  require("zen-mode").setup {
			  vim.keymap.set('n', '<leader>m', ":ZenMode<CR>", { silent = true }),
		  }
	  end
  },
  { 'Yggdroot/hiPairs' },
}
