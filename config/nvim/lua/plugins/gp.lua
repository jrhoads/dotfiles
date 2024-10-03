return {
	"robitx/gp.nvim",
	config = function()
		local conf = {
			openai_api_key = { "op.exe", "read", "op://Private/gpnvim/credential" },
			agents = {
				-- Disable ChatGPT 3.5
				{
					name = "ChatGPT3-5",
					disable = true,
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
			}
		}
		require("gp").setup(conf)

		-- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
		vim.keymap.set("n", "<Leader>gg", ":GpChatToggle<cr>", { silent = true })
		vim.keymap.set("n", "<Leader>gc", ":GpChatNew<cr>", { silent = true })
		vim.keymap.set("n", "<Leader>gf", ":GpChatFinder<cr>", { silent = true })

    end,
}
