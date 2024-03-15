return{
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()

      local dashboard = require('alpha.themes.startify')
      -- figlet version of "DataCite"
      local logo = [[
    ____        __        _______ __
   / __ \____ _/ /_____ _/ ____(_) /____
  / / / / __ `/ __/ __ `/ /   / / __/ _ \
 / /_/ / /_/ / /_/ /_/ / /___/ / /_/  __/
/_____/\__,_/\__/\__,_/\____/_/\__/\___/

]]
local logo2 = [[
                 ..
              .::..
             :::.
            .::.  ..:----:::..
            :::.       .-+++++===-:
            :::.          -==+++++++=:
            .::.          -+++++++=+++.
            .:::        .=+++++++++++-
             .:::    .-=++=+++++++=-.
              :::.:=+++++++++=--:.
    ..:::--====::::-=---::..
                .::..         .
                  .::::..  ...
                    ..::::::.
]]
      dashboard.section.header.val = vim.split(logo, "\n")

			require("alpha").setup(dashboard.config)
		end

	}
}
