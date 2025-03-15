return {
  "robitx/gp.nvim",
  cmd = {
    "GpChatNew",
    "GpChatToggle",
    "GpChatFinder"
  },
  keys = {
    { "<Leader>gt", "<cmd>GpChatToggle<cr>", desc = "Toggle GPT Chat" },
    { "<Leader>gg", "<cmd>GpChatNew<cr>", desc = "New GPT Chat", mode = { "n", "v" } },
    { "<Leader>gc", "<cmd>GpChatNew<cr>", desc = "New GPT Chat", mode = { "n", "v" } },
    { "<Leader>gf", "<cmd>GpChatFinder<cr>", desc = "Find GPT Chat" },
  },
  config = function()
    local conf = {
      openai_api_key = { "op.exe", "read", "op://Private/gpnvim/credential" },
      providers = {
        anthropic = {
          disable = false,
          endpoint = "https://api.anthropic.com/v1/messages",
          secret = { "op.exe", "read", "op://Private/Antropic-NVIM/credential" },
        },
        openai = {
          disable = false,
          endpoint = "https://api.openai.com/v1/chat/completions",
        },
        azure = { },
        copilot = { },
        ollama = { },
        lmstudio = { },
        googleai = { },
        pplx = { },
      },
      agents = {
        -- Disable Several Agents
        { name = "ChatGPT3-5", disable = true, },
        { name = "ChatGPT4o", disable = true, },
        { name = "ChatGPT4o-mini", disable = true, },
        { name = "CodeGPT4o", disable = true, },
        { name = "CodeGPT4o-mini", disable = true, },
        { name = "CodeClaude-3-Haiku", disable = true, },
        -- Configure Used Agents
        {
          provider = "anthropic",
          name = "ChatClaude-3-5-Sonnet",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = { model = "claude-3-5-sonnet-20241022", temperature = 0.8, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a specialized coding AI assistant.\n\n"
          .. "The user provided the additional info about how they would like you to respond:\n\n"
          .. "- If you're unsure don't guess and say you don't know instead.\n"
          .. "- Ask question if you need clarification to provide better answer.\n"
          .. "- Think deeply and carefully from first principles step by step.\n"
          .. "- Make your answers short, conscience, to the point and helpful.\n"
          .. "- Produce only valid and actionable code.\n"
          .. "- Include only essencial response like code etc, DO NOT provide explanations unless specifically asked for\n"
          .. "- Take a deep breath; You've got this!",
        },
        {
          name = "ChatGPT4",
          chat = true,
          command = true,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o", temperature = 0.1, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a specialized coding AI assistant.\n\n"
          .. "The user provided the additional info about how they would like you to respond:\n\n"
          .. "- If you're unsure don't guess and say you don't know instead.\n"
          .. "- Ask question if you need clarification to provide better answer.\n"
          .. "- Think deeply and carefully from first principles step by step.\n"
          .. "- Make your answers short, conscience, to the point and helpful.\n"
          .. "- Produce only valid and actionable code.\n"
          .. "- Include only essencial response like code etc, DO NOT provide explanations unless specifically asked for\n"
          .. "- Take a deep breath; You've got this!",
        },
      },
      image = {disable = true},
      whisper = { disable = true },
    }
    require("gp").setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
    vim.keymap.set("n", "<Leader>gt", ":GpChatToggle<cr>", { silent = true })
    vim.keymap.set("n", "<Leader>gg", ":GpChatNew<cr>", { silent = true })
    vim.keymap.set("v", "<Leader>gg", ":GpChatNew<cr>", { silent = true })
    vim.keymap.set("n", "<Leader>gc", ":GpChatNew<cr>", { silent = true })
    vim.keymap.set("v", "<Leader>gc", ":GpChatNew<cr>", { silent = true })
    vim.keymap.set("n", "<Leader>gf", ":GpChatFinder<cr>", { silent = true })

  end,
}
