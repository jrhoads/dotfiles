  return {
    "Exafunction/windsurf.nvim",
    event = "BufEnter",
    enabled=true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = false,
        enable_cmp_source = true,
        surround_no_insert_mappings = true,
        -- map_keys = false,
        virtual_text = {
          enabled = true,
          map_keys = true,
          key_bindings = {
            -- Accept the current completion.
            accept = "<C-g>",
            -- Accept the current completion and move to the next one.
            next = "<C-b>",
            -- Accept the current completion and move to the previous one.
            prev = "<C-f>",
            -- Dismiss the current completion.
            clear = "<C-x>",
          },
        }
      })
    end
  }
