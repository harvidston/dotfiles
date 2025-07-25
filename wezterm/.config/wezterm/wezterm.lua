-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_decorations = "NONE"

--wezterm.on('gui-startup', function(cmd)
--  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
--  window:gui_window():toggle_fullscreen()
--end)

config.font = wezterm.font {
	family = 'JetBrains Mono',
    weight = 'Regular',
}
config.font_size = 13.5
config.color_scheme = "kanagawabones"
--config.color_scheme = 'Black Metal (Bathory) (base16)'
--config.color_scheme = 'Twilight (Gogh)'
--config.color_scheme = 'GruvboxDarkHard'
--config.color_scheme = 'Fahrenheit'
--config.color_scheme = 'ForestBlue'
--config.color_scheme = 'Darktooth (base16)'
config.window_frame = {
  active_titlebar_bg = "#0F0F12",
  inactive_titlebar_bg = "#0F0F12",
  font_size = 10.0,
}
config.colors = {
  background = "#15151A"
}
config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.5,
}

config.keys = {
  {
    key = 'v',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = "t",
    mods = "CTRL",
    action = wezterm.action.SpawnTab("CurrentPaneDomain"),
  },
  {key="h", mods="CTRL", action=wezterm.action.ActivatePaneDirection("Left")},
  {key="l", mods="CTRL", action=wezterm.action.ActivatePaneDirection("Right")},
  {key="k", mods="CTRL", action=wezterm.action.ActivatePaneDirection("Up")},
  {key="j", mods="CTRL", action=wezterm.action.ActivatePaneDirection("Down")},
  {key="w", mods="CTRL", action=wezterm.action.CloseCurrentPane{confirm=false}},
}
return config
