local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'nord'
config.font_size = 14.0

config.hide_tab_bar_if_only_one_tab = true

return config

