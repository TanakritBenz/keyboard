-- Default keybindings for WindowLayout Mode
--
-- To customize the key bindings for WindowLayout Mode, create a copy of this
-- file, save it as `windows-bindings.lua`, and edit the table below to
-- configure your preferred shortcuts.

--------------------------------------------------------------------------------
-- Define WindowLayout Mode
--
-- WindowLayout Mode allows you to manage window layout using keyboard shortcuts
-- that are on the home row, or very close to it. Use ctrl+s to turn
-- on WindowLayout mode. Then, use any shortcut below to perform a window layout
-- action. For example, to send the window left, press and release
-- ctrl+s, and then press h.
--
--   h/j/k/l => send window to the left/bottom/top/right half of the screen
--   i => send window to the upper left quarter of the screen
--   o => send window to the upper right quarter of the screen
--   , => send window to the lower left quarter of the screen
--   . => send window to the lower right quarter of the screen
--   return => make window full screen
--   n => send window to the next monitor
--   left => send window to the monitor on the left (if there is one)
--   right => send window to the monitor on the right (if there is one)
--------------------------------------------------------------------------------

return {
  modifiers = {'ctrl'},
  showHelp  = true,
  trigger   = 's',
  mappings  = {
    { {},         'return', 'maximize' },
    { {'shift'},  'return', 'fullHeightCenter' },
    { {},         'space',  'halfHeightWideCenter' },
    { {'shift'},  'space',  'halfAndHalfCenter' },
    { {},         'h',      'left' },
    { {},         'l',      'right' },
    { {},         'k',      'up' },
    { {},         'j',      'down' },
    { {},         'i',      'upLeft' },
    { {},         'o',      'upRight' },
    { {},         ',',      'downLeft' },
    { {},         '.',      'downRight' },
    { {'shift'},  'h',      'left40' },
    { {'shift'},  'l',      'right60' },
    { {},         'n',      'nextScreen' }, -- not working currently
    { {},         'right',  'moveOneScreenEast' }, -- not working currently
    { {},         'left',   'moveOneScreenWest' }, -- not working currently
  }
}
