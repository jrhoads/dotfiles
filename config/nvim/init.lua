
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

--require'nvim-treesitter.configs'.setup {
  ---- A list of parser names, or "all"
  --ensure_installed = {
    --"javascript",
    --"typescript",
    --"c",
    --"lua",
    --"rust",
    --"python",
    --"php",
    --"yaml",
    --"json",
    --"ruby",
    --"css",
    --"html",
  --},

  ---- Install parsers synchronously (only applied to `ensure_installed`)
  --sync_install = false,

  ---- Automatically install missing parsers when entering buffer
  ---- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  --auto_install = true,

  --highlight = {
    ---- `false` will disable the whole extension
    --enable = true,

    ---- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    ---- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    ---- Using this option may slow down your editor, and you may see some duplicate highlights.
    ---- Instead of true it can also be a list of languages
    --additional_vim_regex_highlighting = false,
  --},
--}

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
local alpha = require 'alpha'
local dashboard = require 'alpha.themes.startify'


require'alpha'.setup(dashboard.config)
--vim.cmd.colorscheme "catppuccin"
