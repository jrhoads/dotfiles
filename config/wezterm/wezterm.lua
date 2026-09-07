local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.font = wezterm.font("GeistMonoNerdFontMono", {weight="Medium", stretch="Normal"})
config.font = wezterm.font("Hack Nerd Font")
-- config.font = wezterm.font("VictorMonoNerdFontMono", {weight="Bold", stretch="Normal"})
config.font_size=16
config.line_height=1.2

config.color_scheme = 'Elementary (Gogh)'
config.color_scheme = 'LiquidCarbon'
config.color_scheme = 'Argonaut'
-- config.color_scheme = 'DimmedMonokai'
-- config.color_scheme = 'Elementary'
-- config.color_scheme = 'rose-pine'
-- config.color_scheme = 'Obsidian'
local my_border = "a72f44"
config.window_frame = {
  border_left_width = '0.25cell',
  border_left_color = my_border,
  border_right_width = '0.25cell',
  border_right_color = my_border,
  border_top_height = '0.25cell',
  border_top_color = my_border,
  border_bottom_height = '0.25cell',
  border_bottom_color = my_border,
}
config.window_background_opacity = 0.9
config.window_padding ={
  left = '1cell',
  right = '1cell',
  top = '0.25cell',
  bottom = '0.4cell',
}
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations='RESIZE'
config.bypass_mouse_reporting_modifiers = 'CTRL'
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

config.keys = {
  { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard',},
  { key = 'F11', mods = '', action = wezterm.action.ToggleFullScreen,},
  { key = 'f', mods = 'ALT', action = wezterm.action.ToggleFullScreen,},
}
return config
