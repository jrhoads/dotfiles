return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    -- lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tailwindcss",
          -- "ruby_lsp",
          "html",
          "ts_ls",
          "lua_ls",
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tailwindcss.setup({
        -- capabilities = capabilities
      })
      -- lspconfig.ruby_lsp.setup({
      --   -- capabilities = capabilities,
      --   cmd = {
      --     "docker",
      --     "compose",
      --     "exec",
      --     "-T",
      --     "web",
      --     "bundle",
      --     "exec",
      --     "ruby-lsp",
      --   },
      --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "config.ru"),
      --   filetypes = { "ruby" },
      --   init_options = {
      --     formatter = "rubocop",
      --     linter = "rubocop",
      --     enabledFeatures = {
      --       "codeActions",
      --       "diagnostics",
      --       "documentHighlights",
      --       "documentLink",
      --       "documentSymbols",
      --       "foldingRanges",
      --       "formatting",
      --       "hover",
      --       "inlayHint",
      --       "onTypeFormatting",
      --       "selectionRanges",
      --       "semanticHighlighting",
      --     }
      --   }

      -- })
      lspconfig.html.setup({
        -- capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        -- capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        -- capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
      vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
      vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, {})
    end,
  },
}
