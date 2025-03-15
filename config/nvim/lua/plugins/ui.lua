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
  -- modicator (auto color line number based on vim mode)
  {
	  "mawkler/modicator.nvim",
    enabled = false,
	  -- dependencies = "scottmckendry/cyberdream.nvim",
	  init = function()
		  -- These are required for Modicator to work
		  vim.o.cursorline = true
		  vim.o.number = true
		  vim.o.termguicolors = true
	  end,
	  opts = {},
  },
  {
	  'echasnovski/mini.map',
	  version = "*",
	  config = function()
		  local map = require('mini.map')
		  local gen_integr = map.gen_integration
		  map.setup({
			  integrations = { gen_integr.builtin_search(), gen_integr.gitsigns() },
			  symbols = { encode = map.gen_encode_symbols.dot('3x2') },
			  window = {
				  show_integration_count = false,
			  }
		  })
		  vim.keymap.set('n', '<leader><right>', ":lua MiniMap.toggle()<CR>", { silent = true })
	  end
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
  {
	  'szw/vim-maximizer',
	  config = function()
		  vim.keymap.set('n', '<leader>w', ":MaximizerToggle<CR>", { silent = true })
		  vim.keymap.set('n', '<C-Space>', ":MaximizerToggle<CR>", { silent = true })
		  vim.keymap.set('v', '<C-Space>', ":MaximizerToggle<CR>gv", { silent = true })
		  vim.keymap.set('i', '<C-Space>', "<C-o>:MaximizerToggle<CR>", { silent = true })
	  end
  },
  { 'Yggdroot/hiPairs' },
}
