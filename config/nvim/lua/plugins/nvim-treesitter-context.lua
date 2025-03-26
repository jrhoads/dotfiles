return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufReadPost", "BufWinEnter" },
  opts = { mode = "cursor", max_lines = 3 },
  keys = {
    {
      "<leader>ut",
      function()
        local tsc = require("treesitter-context")
        tsc.toggle()
        -- Use the enabled property directly from the treesitter-context object
        if tsc.enabled() then
          vim.notify("Treesitter Context enabled", vim.log.levels.INFO)
        else
          vim.notify("Treesitter Context disabled", vim.log.levels.WARN)
        end
      end,
      desc = "Toggle Treesitter Context",
    },
  },
}
