return {
  "saghen/blink.cmp",
  enabled=true,
  dependencies = {
    "rafamadriz/friendly-snippets",
    "Kaiser-Yang/blink-cmp-avante",
    -- "mikavilpas/blink-ripgrep.nvim",
    -- 'dmitmel/cmp-digraphs',
    "Exafunction/codeium.nvim",
    "folke/lazydev.nvim",
    "saghen/blink.compat",
  },
  lazy = false,
  -- event = "InsertEnter",
  build = ":UpdateRemotePlugins",
  version = "*",
  opts = {
    keymap = {
      preset = 'default',
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
      -- documentation = {
      --   window = { border = "rounded" },
      --   --   auto_show = true,
      --   --   auto_show_delay_ms = 500,
      -- },
      menu = {
        auto_show = true,
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
        "codeium",
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
          }
        },
      --   digraphs = {
      --     name = 'digraphs',
      --     module = 'blink.compat.source',
      --     score_offset = -3,
      --     opts = {
      --       cache_digraphs_on_start = true,
      --     },
      --   },
        codeium = {
          name = "codeium",
          module = "blink.compat.source",
        },
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
