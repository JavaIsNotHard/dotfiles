-- require("tokyonight").setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   transparent = true, -- Enable this to disable setting the background color
--   --- You can override specific color groups to use other groups or a hex color
--   --- function will be called with a ColorScheme table
--
--   --- You can override specific highlights to use other groups or a hex color
--   --- function will be called with a Highlights and ColorScheme table
-- })
-- vim.cmd("colorscheme tokyonight-night")
--

function setColorscheme(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

setColorscheme()
	


--
-- require("github-theme").setup({
--   theme_style = "dark_default",
--   function_style = "italic",
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},
--   transparent = true,
--
--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   colors = {hint = "orange", error = "#ff0000"},
--
--   -- Overwrite the highlight groups
--   overrides = function(c)
--     return {
--       htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
--       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
--       -- this will remove the highlight groups
--       TSField = {},
--     }
--   end
-- })
--

--
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = false,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {},
--   dim_inactive = false,
--   transparent_mode = true,
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
-- })
-- vim.cmd("colorscheme gruvbox")
--

--
-- vim.cmd[[set background=dark]]
-- vim.cmd[[let g:gruvbox_material_transparent_background = 2]]
-- vim.cmd[[colorscheme gruvbox-material]]




-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
--     transparent_background = true,
--     term_colors = true,
--     dim_inactive = {
--         enabled = true,
--         shade = "dark",
--         percentage = 1.0,
--     },
--     styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         treesitter = true,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })
-- vim.cmd("colorscheme catppuccin")
--

--



--
-- -- Default options
-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--     compile_file_suffix = "_compiled", -- Compiled file suffix
--     transparent = true,    -- Disable setting background
--     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,   -- Non focused panes set to alternative background
--     styles = {              -- Style to be applied to different syntax groups
--       comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "NONE",
--       constants = "NONE",
--       functions = "NONE",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {             -- List of various plugins and additional options
--       -- ...
--     },
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme carbonfox")
--
--

--
-- -- Default options:
-- require('kanagawa').setup({
--     undercurl = true,           -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     variablebuiltinStyle = { italic = true},
--     specialReturn = true,       -- special highlight for the return keyword
--     specialException = true,    -- special highlight for exception handling keywords
--     transparent = true,        -- do not set background color
--     dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
--     globalStatus = true,       -- adjust window separators highlight for laststatus=3
--     terminalColors = true,      -- define vim.g.terminal_color_{0,17}
--     colors = {},
--     overrides = {},
--     theme = "light"           -- Load "default" theme or the experimental "light" theme
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
-- --
--

--
-- local M = {}
-- M.ayu = function ()
--   vim.o.termguicolors = true
--   local colors = require("ayu.colors")
--   require("ayu").setup({
--     mirage = true,
--     overrides = {
--       Wildmenu = { bg = colors.bg , fg = colors.markup },
--       Comment = { fg = 'gray', italic = true, },
--       LineNr = { fg = 'gray' }
--     }
--   })
--   require("ayu").colorscheme()
-- end
-- function M.transparent_override()

--   local highlights = {
--     "Normal",
--     "LineNr",
--     "Folded",
--     "NonText",
--     "SpecialKey",
--     "VertSplit",
--     "SignColumn",
--     "EndOfBuffer",
--   }
--   for _, highlight in pairs(highlights) do
--     vim.cmd.highlight(highlight .. ' guibg=none ctermbg=none') --
--   end
-- end
-- function M.link_highlights()
--   local links = {
--   }
--   for source, destination in pairs(links) do
--     vim.api.nvim_set_hl(0, source, {link = destination})
--   end
-- end
-- return M
