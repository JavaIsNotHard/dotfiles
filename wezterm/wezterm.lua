local wezterm = require 'wezterm'

local config = {}
config.enable_wayland = false
config.window_close_confirmation = 'AlwaysPrompt'
config.window_decorations = "TITLE | RESIZE"
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
--config.color_scheme = '3024 (dark) (terminal.sexy)'
--config.color_scheme = 'Apple System Colors'
-- config.color_scheme = 'Belafonte Night (Gogh)'
-- config.color_scheme = 'Belafonte Night'
-- config.color_scheme = 'Crayon Pony Fish (Gogh)'
-- config.color_scheme = 'Dawn (terminal.sexy)'
-- config.color_scheme = 'duckbones'
-- config.color_scheme = 'Ef-Cherie'
-- config.color_scheme = 'Atelierforest (dark) (terminal.sexy)'
-- config.color_scheme = 'Default (dark) (terminal.sexy)'
--config.color_scheme = 'Github Dark (Gogh)'
config.color_scheme = 'Ef-Symbiosis'
--config.color_scheme = 'iTerm2 Default'
config.front_end = "WebGpu"

-- config.font = wezterm.font("FiraCode Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font = wezterm.font("Hack Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
--config.font = wezterm.font("JetBrains Mono Nerd Font", {weight="Regular", style="Normal"})
-- config.font = wezterm.font("Iosevka Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 18
config.audible_bell = "Disabled"
config.enable_tab_bar = false
-- config.use_fancy_tab_bar = false
-- config.font_rules = {
--     {
--         intensity = 'Bold',
--         italic = false,
--         font = wezterm.font(
--             'FiraCode Nerd Font'
--         )
--     },
--     {
--         italic = true,
--         intensity = 'Half',
--         font = wezterm.font(
--             'FiraCode Nerd Font'
--         )
--     },
--     {
--         italic = true, 
--         intensity = 'Normal',
--         font = wezterm.font(
--             'FiraCode Nerd Font'
--         )
--     }
-- }
--
return config

