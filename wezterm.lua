local wezterm = require 'wezterm'
return {
  color_scheme = "Gruvbox dark, pale (base16)",
  -- color_scheme = "Github Light (Gogh)",
  font = wezterm.font 'Source Code Pro',
  font_size = 14,
  scrollback_lines = 10000,
  enable_scroll_bar = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
  },
  keys = {
    {
      key = 'l',
      mods = 'CMD',
      action = wezterm.action.ActivateTabRelative(1)
    },
    {
      key = 'h',
      mods = 'CMD',
      action = wezterm.action.ActivateTabRelative(-1)
    },
    {
      key = 'l',
      mods = 'CMD|CTRL',
      action = wezterm.action.MoveTabRelative(1)
    },
    {
      key = 'h',
      mods = 'CMD|CTRL',
      action = wezterm.action.MoveTabRelative(-1)
    },
    {
      key = 'k',
      mods = 'CMD',
      action = wezterm.action.ClearScrollback 'ScrollbackAndViewport'
    },
    {
      key = 't',
      mods = 'CMD',
      action = wezterm.action.SpawnCommandInNewTab
    }
  }
}
