local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = 'nord',
  window_background_opacity = 0.98,
  -- use_fancy_tab_bar = false,

  -- Disable annoying bell
  audible_bell = 'Disabled',

  -- Font
  font = wezterm.font 'FiraCode Nerd Font',
  -- warn_about_missing_glyphs = false,

  -- Key Mappings
  disable_default_key_bindings = true,
  leader = { key = 'Space', mods = 'CTRL', timeout_milliseconds = 1000 },
  keys = {
    -- reload configuration
    { key = 'r', mods = 'LEADER', action = act.ReloadConfiguration },
    { key = 'l', mods = 'LEADER', action = act.ShowLauncher },
    -- window new/fullscreen/find_mode/copy_mod
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
    -- tab navigation
    { key = 'L', mods = 'CTRL|SHIFT', action = act.ShowTabNavigator },
    { key = 'T', mods = 'CTRL|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'Tab', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
    { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    -- pane zoom toggle
    { key = 'Enter', mods = 'ALT|SHIFT', action = act.TogglePaneZoomState },
    -- pane split
    { key = 'X', mods = 'ALT|SHIFT', action = act.SplitPane { direction = 'Down' } },
    { key = 'V', mods = 'ALT|SHIFT', action = act.SplitPane { direction = 'Right' } },
    -- pane navigation
    { key = 'H', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Left' },
    { key = 'L', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Right' },
    { key = 'K', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Up' },
    { key = 'J', mods = 'ALT|SHIFT', action = act.ActivatePaneDirection 'Down' },
    -- pane resize
    { key = 'LeftArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Left', 1 } },
    { key = 'RightArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Right', 1 } },
    { key = 'UpArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Up', 1 } },
    { key = 'DownArrow', mods = 'ALT|SHIFT', action = act.AdjustPaneSize { 'Down', 1 } },
    -- Project navigation
    { key = 'w', mods = 'LEADER', action = act.SpawnCommandInNewTab { cwd = os.getenv('HOME') .. '/work', domain = 'CurrentPaneDomain', args = { 'folder-picker' } } },
    { key = 'g', mods = 'LEADER', action = act.SpawnCommandInNewTab { cwd = os.getenv('HOME') .. '/git', domain = 'CurrentPaneDomain', args = { 'folder-picker' } } },
  },
}
