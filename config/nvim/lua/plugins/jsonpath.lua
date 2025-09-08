return {
  "mogelbrod/vim-jsonpath",
  ft = { "json" }, -- Load only for JSON files
  -- optional: you can still use cmd or keys, and they will only be available for json files
  cmd = { "JsonPath" },
  keys = {
    { "<leader>jp", "<cmd>JsonPath<cr>", mode = "n", desc = "Echo JSON Path" },
  },
  config = function()
    -- Optional: if you need to configure the plugin further
    -- Example:
    vim.g.jsonpath_register = 1 -- Yanks path to register 'p'
  end,
}
