-- require("tokyonight").setup({
--   style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   transparent = true, -- Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
-- })

require('rose-pine').setup({
    disable_background = false
})

require('midnight').setup {
}


require('kanagawa').setup {
    transparent = false,
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        }
    end,
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
}

vim.cmd[[colorscheme habamax.nvim]]

-- local status, kanagawa = pcall(require, "kanagawa")
-- if not status then
-- 	print("kanagawa colorscheme not found!")
-- 	return
-- end
-- local status, icons = pcall(require, "nvim-web-devicons")
-- if not status then
-- 	print("nvim-web-devicons not installed")
-- 	return
-- end
--
-- -- palette colors
-- local c = require("kanagawa.colors").setup({ theme = "wave" }).palette
--
-- -- custom colors
-- local BG = "#17191c"
-- local ALMOST_BG = "#1c1e20"
-- local WHITE = "#9da2af"
-- local GRAY = "#80838f"
-- local FADED_GRAY = "#33373a"
-- local STRONG_FADED_GRAY = "#2a2d30"
--
-- kanagawa.setup({
-- 	colors = {
-- 		theme = {
-- 			all = {
-- 				ui = {
-- 					bg_gutter = "none",
-- 				},
-- 			},
-- 		},
-- 		palette = {
-- 			oldWhite = WHITE, -- white text
-- 			fujiWhite = WHITE, -- white text
-- 			fujiGray = FADED_GRAY, -- comments
-- 			sumiInk3 = BG, -- bg
-- 		},
-- 	},
-- 	overrides = function(colors)
-- 		local overrides = {
--
-- 			--general
-- 			Visual = { bg = ALMOST_BG },
-- 			ModeMsg = { fg = c.oniViolet },
--
-- 			-- bufferline
-- 			BufferLineFill = { bg = BG },
-- 			BufferLineBackground = { bg = BG, fg = FADED_GRAY }, -- unactive tabs to faded gray
-- 			BufferLineSeparator = { fg = BG },
-- 			BufferLineModified = { fg = BG },
-- 			BufferlineBufferSelected = { fg = GRAY }, -- active tabs to gray
-- 			BufferlineBufferVisible = { fg = GRAY }, -- active tabs to gray
-- 			BufferLineIndicatorVisible = { fg = BG },
--
-- 			-- indentline
-- 			IndentBlanklineChar = { fg = ALMOST_BG },
--
-- 			-- GitSigns
-- 			GitSignsAdd = { fg = c.oniViolet },
-- 			GitSignsAddNr = { fg = c.oniViolet },
-- 			GitSignsAddLn = { fg = c.oniViolet },
-- 			GitSignsChange = { fg = c.oniViolet },
-- 			GitSignsChangeNr = { fg = c.oniViolet },
-- 			GitSignsChangeLn = { fg = c.oniViolet },
-- 			GitSignsCurrentLineBlame = { fg = FADED_GRAY },
--
-- 			-- NvimTree
-- 			NvimTreeGitDirty = { fg = c.oniViolet },
-- 			NvimTreeGitStaged = { fg = c.oniViolet },
-- 			NvimTreeGitMerge = { fg = c.oniViolet },
-- 			NvimTreeGitRenamed = { fg = c.oniViolet },
-- 			NvimTreeGitNew = { fg = c.oniViolet },
-- 			NvimTreeGitDeleted = { fg = c.oniViolet },
-- 			NvimTreeFolderName = { fg = WHITE },
-- 			NvimTreeOpenedFolderName = { fg = WHITE },
-- 			NvimTreeEmptyFolderName = { fg = WHITE },
-- 			NvimTreeRootFolder = { fg = GRAY },
-- 			NvimTreeSpecialFile = { fg = WHITE, bold = true },
-- 			NvimTreeNormalFloat = { bg = BG },
-- 			NvimTreeCursorLine = { bg = ALMOST_BG },
-- 			NvimTreeIndentMarker = { fg = STRONG_FADED_GRAY },
-- 			NvimTreeImageFile = { fg = WHITE },
-- 			NvimTreeFolderIcon = { fg = GRAY },
-- 			NvimTreeFolderIconOpen = { fg = GRAY },
-- 			NvimTreeFolderSymlink = { fg = GRAY },
-- 			NvimTreeDefault = { fg = GRAY },
-- 			NvimTreeSymlink = { fg = GRAY },
-- 			NvimTreeBookmark = { fg = GRAY },
-- 		}
--
-- 		-- change color of icons
-- 		local new_icons = {}
-- 		for key, icon in pairs(icons.get_icons()) do
-- 			icon.color = GRAY
-- 			new_icons[key] = icon
-- 			overrides["BufferLineDevIcon" .. icon.name] = { bg = BG, fg = FADED_GRAY } -- unactive tabs to faded gray
-- 			overrides["BufferLineDevIcon" .. icon.name .. "Selected"] = { bg = BG, fg = GRAY } -- active tabs to gray
-- 		end
-- 		icons.set_icon(new_icons)
--
-- 		return overrides
-- 	end,
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
-- require("tokyonight").setup({
--     transparent = false,
--     style = "night",
--     styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--     },
--     dim_inactive = true,
-- })
-- vim.cmd("color tokyonight-night")
-- local colors = require("tokyonight.colors").setup()
-- vim.api.nvim_set_hl(0, 'SpellBad', { bg = "#ff2929" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_float })
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.orange })
-- -- vim.api.nvim_set_hl(0, "LineNr", { fg = colors.fg_dark })
-- vim.api.nvim_set_hl(0, "Comment", { fg = colors.dark5 })
-- vim.api.nvim_set_hl(0, "Folded", { bg = colors.black })
-- vim.api.nvim_set_hl(0, 'WinSeparator', { fg = colors.fg_dark })
-- vim.api.nvim_set_hl(0, "LspInlayHint", {
--     fg = "#5B5F76",
--     bg = colors.bg_float,
--     italic = true,
-- })
-- vim.api.nvim_set_hl(0, "GhostText", {
--     fg = "#5B5F76",
--     bg = colors.bg_float,
-- })
-- vim.api.nvim_set_hl(0, "Tabline", {
--     fg = colors.orange,
--     bg = colors.bg_float,
-- })
-- vim.api.nvim_set_hl(0, "TablineSel", {
--     fg = colors.orange,
--     bg = colors.bg_highlight,
--     bold = true,
-- })
-- vim.api.nvim_set_hl(0, "WinBar", {
--     fg = colors.orange,
--     bg = colors.bg_float,
--     bold = true,
-- })
-- vim.api.nvim_set_hl(0, "WinBarNC", {
--     fg = colors.fg_float,
--     bg = colors.bg_float,
--     bold = false,
-- })
-- vim.api.nvim_set_hl(0, "WinBarLSP", {
--     fg = colors.fg_dark,
--     bg = colors.bg_float,
-- })
-- vim.api.nvim_set_hl(0, "WinBarHarpoon", {
--     fg = colors.purple,
--     bg = colors.bg_float,
-- })
-- vim.api.nvim_set_hl(0, "WinBarGit", {
--     fg = colors.blue,
--     bg = colors.bg_float,
--     bold = false
-- })
-- vim.api.nvim_set_hl(0, "WinBarGitAdded", {
--     fg = colors.green,
--     bg = colors.bg_float,
--     bold = false,
-- })
-- vim.api.nvim_set_hl(0, "WinBarGitSubbed", {
--     fg = colors.red,
--     bg = colors.bg_float,
--     bold = false,
-- })
-- vim.api.nvim_set_hl(0, "StatusLine", {
--     fg = colors.orange,
--     bg = colors.bg_dark,
-- })
-- vim.api.nvim_set_hl(0, "StatusLineNC", {
--     fg = colors.fg_dark,
--     bg = colors.bg_float,
-- })
-- vim.api.nvim_set_hl(0, 'MatchParen', {
--     fg = colors.orange,
--     bold = true,
-- })
-- vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', {
--     fg = colors.dark5,
-- })
