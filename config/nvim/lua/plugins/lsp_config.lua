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
      --   capabilities = capabilities,
      --   cmd = { "/home/typecraft/.asdf/shims/ruby-lsp" }
      -- })
      lspconfig.html.setup({
        -- capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        -- capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        -- capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
      vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, {})
    end,
  },
}
