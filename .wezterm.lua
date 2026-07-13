-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 35

-- or, changing the font size and color scheme.
config.font_size = 12
config.font = wezterm.font_with_fallback {
  'JetBrainsMono Nerd Font',
  'Source Code Pro',
  'Noto Sans SC',
  'Noto Sans CJK SC',
  'Noto Sans CJK SC Regular',
  
}

config.color_scheme = 'Catppuccin Mocha'
-- Set Git Bash as the default shell
-- config.default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" }
config.window_close_confirmation = 'NeverPrompt'

-- Finally, return the configuration to wezterm:
return config
