local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = 'nord',
  font = wezterm.font 'Fira Code',
  window_background_opacity = 0.98,

  disable_default_key_bindings = true,
  leader = { key = 'Space', mods = 'CTRL' },
  keys = {
    -- reload configuration
    { key = 'r', mods = 'LEADER', action = act.CopyTo 'Clipboard' },
    -- window
    { key = 'n', mods = 'CTRL', action = act.SpawnWindow },
    { key = 'Enter', mods = 'CTRL', action = act.ToggleFullScreen },
    -- copy/paste
    { key = 'mapped:C', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
    { key = 'mapped:V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },    
    -- font size inc/dec/reset
    { key = '+', mods = 'CTRL|SHIFT', action = act.IncreaseFontSize },
    { key = '-', mods = 'CTRL|SHIFT', action = act.DecreaseFontSize },
    { key = '0', mods = 'CTRL|SHIFT', action = act.ResetFontSize },
    -- pane zoom toggle
    { key = 'Enter', mod = 'ALT|SHIFT', action = act.TogglePaneZoomState },
    -- pane split
    { key = 'mapped:S', mod = 'ALT', action = act.SplitPane { direction = 'Down' } },
    { key = 'mapped:V', mod = 'ALT', action = act.SplitPane { direction = 'Right' } },
    -- pane navigation
    { key = 'mapped:H', mod = 'ALT', action = act.ActivatePaneDirection 'Left' },
    { key = 'mapped:L', mod = 'ALT', action = act.ActivatePaneDirection 'Right' },
    { key = 'mapped:K', mod = 'ALT', action = act.ActivatePaneDirection 'Up' },
    { key = 'mapped:J', mod = 'ALT', action = act.ActivatePaneDirection 'Down' },
    -- pane resize
    { key = 'LeftArrow', mod = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Left', 1 } },
    { key = 'RightArrow', mod = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Right', 1 } },
    { key = 'UpArrow', mod = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Up', 1 } },
    { key = 'DownArrow', mod = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Down', 1 } },
  },
}
