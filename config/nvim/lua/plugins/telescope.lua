return {
  {
    'nvim-telescope/telescope.nvim',
    enabled = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
            },
          },
          sorting_strategy = "ascending",
          --- other configs
          mappings = {
            n = {
              ['<c-d>'] = require('telescope.actions').delete_buffer,
              ['<c-c>'] = require('telescope.actions').close
            }, -- n
            i = {
              ['<c-d>'] = require('telescope.actions').delete_buffer,
              ['<leader>b'] = require('telescope.actions').close
            } -- i
          }, -- mappings
        }, -- defaults
        pickers = {
            grep_string = {
                additional_args = {
                    "--hidden",
                    "--glob=!**/.git/*",
                    "--glob=!**/.idea/*",
                    "--glob=!**/.vscode/*",
                    "--glob=!**/build/*",
                    "--glob=!**/dist/*",
                    "--glob=!**/yarn.lock",
                    "--glob=!**/package-lock.json",
                }
            },
            live_grep = {
                additional_args = {
                    "--hidden",

                    "--glob=!**/.git/*",
                    "--glob=!**/.idea/*",
                    "--glob=!**/.vscode/*",
                    "--glob=!**/build/*",
                    "--glob=!**/dist/*",
                    "--glob=!**/yarn.lock",
                    "--glob=!**/package-lock.json",
                }
            },
            find_files = {
                hidden = true,
                -- needed to exclude some files & dirs from general search
                -- when not included or specified in .gitignore
                find_command = {
                    "rg",
                    "--files",
                    "--hidden",
                    "--glob=!**/.git/*",
                    "--glob=!**/.idea/*",
                    "--glob=!**/.vscode/*",
                    "--glob=!**/build/*",
                    "--glob=!**/dist/*",
                    "--glob=!**/yarn.lock",
                    "--glob=!**/package-lock.json",
                }, -- find_command
		mappings = {

			i = {
				[".."] = function(prompt_bufnr)
					local current_picker =
						require("telescope.actions.state").get_current_picker(prompt_bufnr)
					-- cwd is only set if passed as telescope option
					local cwd = current_picker.cwd and tostring(current_picker.cwd)
						or vim.loop.cwd()
					local parent_dir = vim.fs.dirname(cwd)
					require("telescope.actions").close(prompt_bufnr)
					require("telescope.builtin").find_files {
						prompt_title = vim.fs.basename(parent_dir),
						cwd = parent_dir,
					}
				end
			}
		}
            }, -- find_files
            colorscheme = {
                enable_preview = true
            }
        }, -- pickers
    }

    local my_grep = function()
	    local cword = vim.fn.expand("<cword>")
	    require("telescope.builtin").live_grep({
		    default_text = cword,
		    on_complete = cword ~= "" and {
			    function(picker)
				    local mode = vim.fn.mode()
				    local keys = mode ~= "n" and "<ESC>" or ""
				    vim.api.nvim_feedkeys(
				    vim.api.nvim_replace_termcodes(keys .. [[^v$<C-g>]], true, false, true),
				    "n",
				    true
				    )
				    -- should you have more callbacks, just pop the first one
				    table.remove(picker._completion_callbacks, 1)
				    -- copy mappings s.t. eg <C-n>, <C-p> works etc
				    vim.tbl_map(function(mapping)
					    vim.api.nvim_buf_set_keymap(0, "s", mapping.lhs, mapping.rhs, {})
				    end, vim.api.nvim_buf_get_keymap(0, "i"))
			    end,
		    } or nil,
	    })
    end
    local builtin = require('telescope.builtin')
    -- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    -- vim.keymap.set('n', '<leader>r', builtin.live_grep, {})
    -- vim.keymap.set('n', '<leader>b', builtin.buffers, {})
    -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    -- vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
    -- vim.keymap.set('n', '<leader>fg', builtin.treesitter, {})
    -- vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
    -- vim.keymap.set('n', '<leader>*', my_grep, {})
    -- vim.keymap.set('n', '/', builtin.current_buffer_fuzzy_find, {})
    -- vim.keymap.set('n', '<leader>uu', builtin.colorscheme, {})
    -- vim.keymap.set('n', '\\', builtin.live_grep, {})
end
  },
  --lazy
  -- {
  --     "nvim-telescope/telescope-file-browser.nvim",
  --     dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  --     config = function()
  --       require("telescope").load_extension "file_browser"
  --       vim.keymap.set('n', '<leader>ff', require('telescope').extensions.file_browser.file_browser, {})
  --     end
  --
  --
  -- },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    enabled=false,
    config = function()
      require("telescope").load_extension "ui-select"
    end
  }
}
