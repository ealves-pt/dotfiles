local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = 'nord',
  font = wezterm.font 'Fira Code', { Style = 'Retina' },
  window_background_opacity = 0.98,

  -- disable_default_key_bindings = true,
  treat_left_ctrlalt_as_altgr = false,
  leader = { key = 'Space', mods = 'CTRL' },
  keys = {
    -- reload configuration
    { key = 'r', mods = 'LEADER', action = act.ReloadConfiguration },
    -- window new/fullscreen/find_mode/copy_mode
    { key = 'N', mods = 'CTRL|SHIFT', action = act.SpawnWindow },
    { key = 'F', mods = 'CTRL|SHIFT', action = act.Search { CaseSensitiveString = "" } },
    { key = 'X', mods = 'CTRL|SHIFT', action = act.ActivateCopyMode },
    -- copy/paste
    { key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
    { key = 'V', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
    -- font size inc/dec/reset
    { key = '*', mods = 'CTRL|SHIFT', action = act.IncreaseFontSize },
    { key = '_', mods = 'CTRL|SHIFT', action = act.DecreaseFontSize },
    { key = '=', mods = 'CTRL|SHIFT', action = act.ResetFontSize },
    -- pane zoom toggle
    { key = 'Enter', mods = 'ALT|SHIFT', action = act.TogglePaneZoomState },
    -- pane split
    { key = 'S', mods = 'ALT|SHIFT', action = act.SplitPane { direction = 'Down' } },
    { key = 'V', mods = 'ALT|SHIFT', action = act.SplitPane { direction = 'Right' } },
    -- pane navigation
    { key = 'H', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Left' },
    { key = 'L', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Right' },
    { key = 'K', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Up' },
    { key = 'J', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Down' },
    -- pane rmapped:esize
    { key = 'LeftArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Left', 1 } },
    { key = 'RightArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Right', 1 } },
    { key = 'UpArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Up', 1 } },
    { key = 'DownArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Down', 1 } },
  },
}
