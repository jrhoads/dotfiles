return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
      ]],
    }
    },
    lazygit = { enabled = false },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    input = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    zenmode = { enabled = true },
    words = { enabled = false },
    styles = {
      notification = {
        wo = { wrap = true } -- Wrap notifications
      }
    }
  },
  keys = {
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
    { "<leader>uu", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    { "<leader><left>", function() Snacks.explorer() end, desc = "File Explorer" },


    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },

    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fs", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
    { "<leader>*", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
    { "<leader>fg", function() Snacks.picker.treesitter() end, desc = "Treesitter" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help" },
    { "<leader>/", function() Snacks.picker.lines() end, desc = "Live Grep" },
    { "<leader>\\", function() Snacks.picker.grep() end, desc = "Live Grep" },
    { "<leader>r", function() Snacks.picker.grep() end, desc = "Live Grep" },
    { "<leader>fb", function() Snacks.picker.buffers({
      -- I always want my buffers picker to start in normal mode
      on_show = function()
        vim.cmd.stopinsert()
      end,
      finder = "buffers",
      format = "buffer",
      hidden = false,
      unloaded = true,
      current = true,
      sort_lastused = true,
      win = {
        input = {
          keys = {
            ["d"] = "bufdelete",
          },
        },
        list = { keys = { ["d"] = "bufdelete" } },
      },
      -- In case you want to override the layout for this keymap
      -- layout = "ivy",
      }) end,
      desc = "[P]Snacks picker buffers",
    },
    { "<leader>gl", function() Snacks.picker.git_log({
        finder = "git_log",
        format = "git_log",
        preview = "git_show",
        confirm = "git_checkout",
        layout = "vertical",
      }) end,
      desc = "Git Log",
    },
    { "<c-p>", function() Snacks.picker.files({
        finder = "files",
        format = "file",
        show_empty = true,
        supports_live = true,
        -- In case you want to override the layout for this keymap
        -- layout = "vscode",
      }) end,
      desc = "Find Files",
    },
    { "<c-/>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<c-_>",      function() Snacks.terminal() end, desc = "which_key_ignore" },
    { "]]",         function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
    { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "cyan" })
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
        vim.print = _G.dd -- Override print to use snacks for `:=` command

        -- Create some toggle mappings
        Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
        Snacks.toggle.diagnostics():map("<leader>ud")
        Snacks.toggle.line_number():map("<leader>ul")
        Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
        Snacks.toggle.treesitter():map("<leader>uT")
        Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        Snacks.toggle.inlay_hints():map("<leader>uh")
      end,
    })
  end,
}
