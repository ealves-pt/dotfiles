local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = 'nord',
  font = wezterm.font 'Fira Code',
  window_background_opacity = 0.98,

  disable_default_key_bindings = true,
  leader = { key = 'Space', mods = 'CTRL' },
  keys = {
    -- pane split
    { mod = 'ALT', key = 'mapped:S', action = act.SplitPane { direction = 'Down' } },
    { mod = 'ALT', key = 'mapped:V', action = act.SplitPane { direction = 'Right' } },
    
    -- pane navigation
    { mod = 'ALT', key = 'mapped:H', action = act.ActivatePaneDirection 'Left' },
    { mod = 'ALT', key = 'mapped:L', action = act.ActivatePaneDirection 'Right' },
    { mod = 'ALT', key = 'mapped:K', action = act.ActivatePaneDirection 'Up' },
    { mod = 'ALT', key = 'mapped:J', action = act.ActivatePaneDirection 'Down' },
    -- pane resize
    { mod = 'ALT|SHIFT', key = 'LeftArrow', action = act.AdjustPaneSize { 'Left', 1 } },
    { mod = 'ALT|SHIFT', key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 1 } },
    { mod = 'ALT|SHIFT', key = 'UpArrow', action = act.AdjustPaneSize { 'Up', 1 } },
    { mod = 'ALT|SHIFT', key = 'DownArrow', action = act.AdjustPaneSize { 'Down', 1 } },
  },
}
