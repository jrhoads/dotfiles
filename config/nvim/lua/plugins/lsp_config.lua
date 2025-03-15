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
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason.nvim",
      "mason-lspconfig.nvim",
    },
    config = function()
      -- Set up keymaps first so they're ready even before LSP attaches
      local function on_attach(_, bufnr)
        local opts = { buffer = bufnr }
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
        vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
        vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, opts)
      end

      -- Common LSP settings
      local lspconfig = require("lspconfig")
      local servers = {
        "tailwindcss",
        "html",
        "ts_ls",
        "lua_ls",
      }

      -- Set up each server
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = on_attach,
        })
      end
    end,
  },
}
