return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  -- version = 'v0.0.9', -- set to last release before winfixbuf
  version = '*', -- set to last release before winfixbuf
  opts = {
    provider = "claude",
    claude = {
      api_key_name = { "op.exe", "read", "op://Private/Antropic-NVIM/credential" },
    },
    mappings = {
      submit = {
        normal = "<CR>",
        insert = "<C-g><C-g>",
      },
    },
    windows = {
      ---@type "right" | "left" | "top" | "bottom"
      position = "right", -- the position of the sidebar
      wrap = true,      -- similar to vim.o.wrap
      width = 30,       -- default % based on available width
      sidebar_header = {
        enabled = true, -- true, false to enable/disable the header
        align = "center", -- left, center, right for title
        rounded = true,
      },
      input = {
        prefix = "> ",
        height = 8, -- Height of the input window in vertical layout
      },
      edit = {
        border = "rounded",
        start_insert = true, -- Start insert mode when opening the edit window
      },
      ask = {
        floating = false,  -- Open the 'AvanteAsk' prompt in a floating window
        start_insert = true, -- Start insert mode when opening the ask window
        border = "rounded",
        ---@type "ours" | "theirs"
        focus_on_apply = "ours", -- which diff to focus after applying
      },
      winfixbuf = false,
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
        latex = { enabled = false },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
