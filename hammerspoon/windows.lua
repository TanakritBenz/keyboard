hs.window.animationDuration = 0.1

-- +-----------------+
-- |        |        |
-- |  HERE  |        |
-- |        |        |
-- +-----------------+
function left(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |        |        |
-- |        |  HERE  |
-- |        |        |
-- +-----------------+
function right(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |      HERE       |
-- +-----------------+
-- |                 |
-- +-----------------+
function up(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x
    f.w = max.w
    f.y = max.y
    f.h = max.h / 2
    win:setFrame(f)
end

-- +-----------------+
-- |                 |
-- +-----------------+
-- |      HERE       |
-- +-----------------+
function down(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x
    f.w = max.w
    f.y = max.y + (max.h / 2)
    f.h = max.h / 2
    win:setFrame(f)
end

-- +-----------------+
-- |  HERE  |        |
-- +--------+        |
-- |                 |
-- +-----------------+
function upLeft(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end

-- +-----------------+
-- |                 |
-- +--------+        |
-- |  HERE  |        |
-- +-----------------+
function downLeft(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end

-- +-----------------+
-- |                 |
-- |        +--------|
-- |        |  HERE  |
-- +-----------------+
function downRight(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2

    win:setFrame(f)
end

-- +-----------------+
-- |        |  HERE  |
-- |        +--------|
-- |                 |
-- +-----------------+
function upRight(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end

-- +------------------+
-- |    +--------+    |
-- |    |  HERE  |    |
-- |    +--------+    |
-- +------------------+
function halfAndHalfCenter(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x + (max.w / 5)
    f.w = max.w * 3 / 5
    f.y = max.y + (max.h / 10)
    f.h = max.h * 4 / 5
    win:setFrame(f)
end

-- +------------------+
-- |  +------------+  |
-- |  |    HERE    |  |
-- |  +------------+  |
-- +------------------+
function halfHeightWideCenter(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x + (max.w / 10)
    f.w = max.w * 4 / 5
    f.y = max.y + (max.h / 10)
    f.h = max.h * 4 / 5
    win:setFrame(f)
end

-- +------------------+
-- |    |        |    |
-- |    |  HERE  |    |
-- |    |        |    |
-- +------------------+
function fullHeightCenter(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

    f.x = max.x + (max.w / 5)
    f.w = max.w * 3 / 5
    f.y = max.y
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |      |          |
-- | HERE |          |
-- |      |          |
-- +-----------------+
function left40(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w * 0.4
    f.h = max.h
    win:setFrame(f)
end

-- +-----------------+
-- |      |          |
-- |      |   HERE   |
-- |      |          |
-- +-----------------+
function right60(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

    f.x = max.x + (max.w * 0.4)
    f.y = max.y
    f.w = max.w * 0.6
    f.h = max.h
    win:setFrame(f)
end

function nextScreen(win)
  local currentScreen = win:screen()
  local allScreens = hs.screen.allScreens()
  currentScreenIndex = hs.fnutils.indexOf(allScreens, currentScreen)
  nextScreenIndex = currentScreenIndex + 1

    if allScreens[nextScreenIndex] then
        win:moveToScreen(allScreens[nextScreenIndex])
    else
        win:moveToScreen(allScreens[1])
    end
end

function maximize(win)
  win:maximize()
end

function moveOneScreenWest(win)
  win:moveOneScreenWest()
end

function moveOneScreenEast(win)
  win:moveOneScreenEast()
end

local windowActions = {
  ["maximize"]                 = maximize,
  ["fullHeightCenter"]         = fullHeightCenter,
  ["halfAndHalfCenter"]        = halfAndHalfCenter,
  ["halfHeightWideCenter"]     = halfHeightWideCenter,
  ["left"]                     = left,
  ["right"]                    = right,
  ["up"]                       = up,
  ["down"]                     = down,
  ["upLeft"]                   = upLeft,
  ["upRight"]                  = upRight,
  ["downLeft"]                 = downLeft,
  ["downRight"]                = downRight,
  ["left40"]                   = left40,
  ["right60"]                  = right60,
  ["nextScreen"]               = nextScreen,
  ["moveOneScreenWest"]        = moveOneScreenWest,
  ["moveOneScreenEast"]        = moveOneScreenEast,
}

windowLayoutMode = hs.hotkey.modal.new({}, 'F16')

windowLayoutMode.entered = function()
    windowLayoutMode.statusMessage:show()
end
windowLayoutMode.exited = function()
    windowLayoutMode.statusMessage:hide()
end

-- Bind the given key to call the given function and exit WindowLayout mode
function windowLayoutMode.bindWithAutomaticExit(mode, modifiers, key, fn)
    mode:bind(modifiers, key, function()
        mode:exit()
        fn()
    end)
end

local status, windowMappings = pcall(require, 'keyboard.windows-bindings')

if not status then
    windowMappings = require('keyboard.windows-bindings-defaults')
end

local modifiers = windowMappings.modifiers
local showHelp  = windowMappings.showHelp
local trigger   = windowMappings.trigger
local mappings  = windowMappings.mappings

function getModifiersStr(modifiers)
  local modMap = { shift = '⇧', ctrl = '⌃', alt = '⌥', cmd = '⌘' }
  local retVal = ''
  for i, v in ipairs(modifiers) do
    retVal = retVal .. modMap[v]
  end
  return retVal
end

local msgStr = getModifiersStr(modifiers)
msgStr = 'Window Layout Mode (' .. msgStr .. (string.len(msgStr) > 0 and '+' or '') .. trigger .. ')'

for i, mapping in ipairs(mappings) do
  local modifiers, trigger, winAction = table.unpack(mapping)
  local hotKeyStr = getModifiersStr(modifiers)

  if showHelp == true then
    if string.len(hotKeyStr) > 0 then
      msgStr = msgStr .. (string.format('\n%10s+%s => %s', hotKeyStr, trigger, winAction))
    else
      msgStr = msgStr .. (string.format('\n%11s => %s', trigger, winAction))
    end

  windowLayoutMode:bindWithAutomaticExit(modifiers, trigger, function()
    --example: hs.window.focusedWindow():upRight()
    local focusedWin = hs.window.focusedWindow()
    if focusedWin == nil then
      return
    end
    windowActions[winAction](focusedWin)
  end)
end

local message = require('keyboard.status-message')
windowLayoutMode.statusMessage = message.new(msgStr)

-- Use modifiers+trigger to toggle WindowLayout Mode
hs.hotkey.bind(modifiers, trigger, function()
    windowLayoutMode:enter()
end)
windowLayoutMode:bind(modifiers, trigger, function()
    windowLayoutMode:exit()
end)
