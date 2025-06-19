return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  -- lazy = true,
  -- version = 'v0.0.9', -- set to last release before winfixbuf
  version = '*', -- NOTE: When using newer versions, you must edit sidebar.lua to comment out winfixbuf
  opts = {
    provider = "claude",
    provider = "gemini",
    auto_suggestions_provider = nil,
    vendors = {
      openrouter = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        api_key_name = 'cmd:op.exe read op://Private/OpenRouter-NVIM/credential',
        model = 'google/gemini-2.5-flash-preview-05-20',
      },
    },
    claude = {
      endpoint = "https://api.anthropic.com",
      -- model = "claude-3-7-sonnet-20250219",
      model = "claude-3-5-sonnet-20241022",
      api_key_name = "cmd:op.exe read op://Private/Antropic-NVIM/credential",
      temperature = 0,
      max_tokens = 8192,
      disable_tools = true,
    },
    gemini = {
      endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
      -- model = "gemini-2.0-flash",
      model = "gemini-2.5-flash-lite-preview-06-17",
      -- model = "gemini-2.5-flash-preview-04-17",
      -- model = "gemini-2.5-pro-preview-05-06",
      api_key_name = "cmd:op.exe read op://Private/Gemini-NVIM/credential",
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      max_tokens = 1048576,
    },
    behavior = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      minimize_diff = true, -- Whether to remove unchanged lines when applying a code block
      enable_token_counting = true
    },
    mappings = {
      submit = {
        normal = "<CR>",
        insert = "<C-g><C-g>",
      },
      sidebar = {
        close_from_input = { normal = "<Esc>", insert = "<C-d>" },
      }
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
      winfixbuf = false, -- Currently ignored but hopeful that future versions will respect this
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
        latex = { enabled = false },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
