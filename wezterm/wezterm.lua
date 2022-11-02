-- -------------------------------------------------------------------
-- rxyhn's aesthetic wezterm configuration
-- A GPU-accelerated cross-platform terminal emulator and multiplexer
--
-- https://github.com/rxyhn
-- -------------------------------------------------------------------

local wezterm = require("wezterm")

local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "Roboto Mono" }
	return wezterm.font_with_fallback(names, params)
end

-- The filled in variant of the > symbol
local font_name = "Roboto Mono"

return {
	-- OpenGL for GPU acceleration, Software for CPU
	front_end = "OpenGL",

	-- Font config
	font = wezterm.font('FiraCode Nerd Font', {weight = 'Medium', italic = false}),
	font_rules = {

  },
	warn_about_missing_glyphs = false,
	font_size = 16,
	line_height = 1.0,

	-- Cursor style

	-- X11
	enable_wayland = true,

	-- Keybinds
	disable_default_key_bindings = false,

	-- Aesthetic Night Colorscheme
	bold_brightens_ansi_colors = true,
	colors = {
		foreground = "#edeff0",
		background = "#0c0e0f",
		cursor_bg = "#edeff0",
		cursor_fg = "#edeff0",
		cursor_border = "#232526",
		selection_fg = "#0c0e0f",
		selection_bg = "#edeff0",
		scrollbar_thumb = "#edeff0",
		split = "#090909",
		ansi = { "#232526", "#df5b61", "#78b892", "#de8f78", "#6791c9", "#bc83e3", "#67afc1", "#e4e6e7" },
		brights = { "#2c2e2f", "#e8646a", "#81c19b", "#e79881", "#709ad2", "#c58cec", "#70b8ca", "#f2f4f5" },
		indexed = { [136] = "#edeff0" },
		tab_bar = {
			active_tab = {
				bg_color = "#0c0e0f",
				fg_color = "#edeff0",
				italic = true,
			},
			inactive_tab = { bg_color = "#090909", fg_color = "#0c0e0f" },
			inactive_tab_hover = { bg_color = "#151515", fg_color = "#090909" },
			new_tab = { bg_color = "#151515", fg_color = "#090909" },
			new_tab_hover = { bg_color = "#6791c9", fg_color = "#090909" },
		},
	},

	-- Padding
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
    use_fancy_tab_bar = false;
--	Tab Bar
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	tab_bar_at_bottom = true,

	-- General
	automatically_reload_config = true,
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
	window_background_opacity = 0.8,
	window_close_confirmation = "NeverPrompt",
	window_frame = { active_titlebar_bg = "#090909", font = font_with_fallback(font_name, { bold = true }) },
}
