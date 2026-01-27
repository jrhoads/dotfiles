return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      model = "gpt-5-mini",
      auto_insert_mode = true,
      mappings= {
        submit_prompt = { insert = "<C-g><C-g>" },
      },
      window = {
        layout = 'vertical',       -- 'vertical', 'horizontal', 'float'
        width = 0.3,              -- 50% of screen width
      },

      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },

      separator = '━━',
      auto_fold = true, -- Automatically folds non-assistant messages
      -- See Configuration section for options
    },
    keys = {
      { "<leader>aa", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
      { "<leader>ax", "<cmd>CopilotChatReset<cr>", desc = "Reset Chat" },
      { "<leader>aq", function() 
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end, desc = "Quick Chat" },
      { "<leader>ah", "<cmd>CopilotChatHelp<cr>", desc = "Help" },
      { "<leader>ae", "<cmd>CopilotChatExplain<cr>", mode = {"n", "v"}, desc = "Explain Code" },
      { "<leader>at", "<cmd>CopilotChatTests<cr>", mode = {"n", "v"}, desc = "Generate Tests" },
      { "<leader>af", "<cmd>CopilotChatFix<cr>", mode = {"n", "v"}, desc = "Fix Code" },
      { "<leader>ao", "<cmd>CopilotChatOptimize<cr>", mode = {"n", "v"}, desc = "Optimize Code" },
      { "<leader>ad", "<cmd>CopilotChatDocs<cr>", mode = {"n", "v"}, desc = "Add Documentation" },
      { "<leader>ac", "<cmd>CopilotChatCommit<cr>", desc = "Generate Commit Message" },
    },
  },
}
