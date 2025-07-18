return {
  "saghen/blink.cmp",
  enabled=true,
  dependencies = {
    "rafamadriz/friendly-snippets",
    "Kaiser-Yang/blink-cmp-avante",
    -- "mikavilpas/blink-ripgrep.nvim",
    -- 'dmitmel/cmp-digraphs',
    -- "Exafunction/codeium.nvim",
    "folke/lazydev.nvim",
    "saghen/blink.compat",
  },
  lazy = false,

  -- event = "InsertEnter",
  build = ":UpdateRemotePlugins",
  version = "*",
  opts = {
    keymap = {
      preset = 'super-tab',
      ['<C-f>'] = { 'show', 'show_documentation', 'hide_documentation' },
    },
    cmdline = {
      keymap = {
        preset = 'super-tab',
      },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = "mono",
    },
    completion = {
    -- Display a preview of the selected item on the current line
      -- ghost_text = { enabled = true },
      keyword = { range = "prefix" },
      list = {
        selection = {
          auto_insert = function(ctx)
            return ctx.mode == "cmdline"
          end,
          preselect = function(ctx)
            return ctx.mode ~= "cmdline"
          end,
        },
      },
      documentation = {
        window = { border = "rounded" },
        --   auto_show = true,
        --   auto_show_delay_ms = 500,
      },
      menu = {
        auto_show = false,
        border = "rounded",
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
          },
        },
      },
    },
    sources = {
      default = {
        "avante",
        "lsp",
        -- "codeium",
        "lazydev",
        -- "path",
        "snippets",
        "buffer",
        -- "ripgrep",
        -- "digraphs",
      },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = {
            -- options for blink-cmp-avante
          },
        },
        lsp = {
          name = 'LSP',
          module = 'blink.cmp.sources.lsp',
          opts = {}, -- Passed to the source directly, varies by source

          --- NOTE: All of these options may be functions to get dynamic behavior
          --- See the type definitions for more information
          enabled = true, -- Whether or not to enable the provider
          async = false, -- Whether we should show the completions before this provider returns, without waiting for it
          timeout_ms = 2000, -- How long to wait for the provider to return before showing completions and treating it as asynchronous
          transform_items = nil, -- Function to transform the items before they're returned
          should_show_items = true, -- Whether or not to show the items
          max_items = nil, -- Maximum number of items to display in the menu
          min_keyword_length = 0, -- Minimum number of characters in the keyword to trigger the provider
          -- If this provider returns 0 items, it will fallback to these providers.
          -- If multiple providers fallback to the same provider, all of the providers must return 0 items for it to fallback
          fallbacks = {},
          score_offset = 0, -- Boost/penalize the score of the items
          override = nil, -- Override the source's functions
        },
      --   digraphs = {
      --     name = 'digraphs',
      --     module = 'blink.compat.source',
      --     score_offset = -3,
      --     opts = {
      --       cache_digraphs_on_start = true,
      --     },
      --   },
        -- codeium = {
        --   name = "codeium",
        --   module = "blink.compat.source",
        -- },
        -- ripgrep = {
        --   name = "Ripgrep",
        --   module = "blink-ripgrep",
        -- },
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    signature = { enabled = true, window = { border = "rounded" } },
  },
  opts_extend = { "sources.default" },
}
