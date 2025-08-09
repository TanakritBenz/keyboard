-- ============================================================================
-- Hyper Mode App Launcher Configuration
-- ============================================================================
--
-- This file defines keyboard shortcuts for launching applications using Hyper Mode.
-- Hyper Mode is activated by holding the Escape key (configured as Shift+Ctrl+Alt+Cmd).
--
-- Usage: Hold Escape + [key] to launch the corresponding application
-- Example: Escape + c launches Google Chrome
--
-- Keys are organized alphabetically for easy maintenance and reference.
--
-- Note: Some keys are intentionally handled by other applications or modes:
-- - 'm' for Window Layout Mode (configured in windows-bindings.lua)
-- - 't' for iTerm slide down window (configured in iTerm Settings)
-- - 'u' for Unclutter (configured in Unclutter Settings)
-- - '1' for 1Password Quick Access (configured in 1Password Settings)
-- ============================================================================


return {
      { 'a', 'Android Studio'},
      { 'b', 'Google Chrome'}, -- B for Browser
      { 'c', 'Claude'},
      { 'd', 'Docker'},
      { 'e', 'Microsoft Edge'},
      { 'f', 'Finder'},
      { 'g', 'Insomnia'}, -- G for GraphQL
      { 'h', function() hs.reload() end}, -- H for Hammerspoon reload
      { 'i', 'iTerm'},
      { 'j', 'IntelliJ'},
      { 'k', 'Keynote'},
      { 'l', ''},
      -- 'm' reserved for the Window Layout Mode (configured in windows-bindings.lua)
      { 'n', 'Notion'},
      { 'o', 'Finder'},
      { 'p', 'System Preferences'},
      { 'q', 'QuickTime Player'},
      { 'r', 'Youtube Music'}, -- R for Radio
      { 's', 'Safari'},
      -- 't' reserved for iTerm slide down window (configured in iTerm Settings)
      -- 'u' reserved for Unclutter (configured in Unclutter Settings)
      { 'v', 'Visual Studio Code'},
      { 'w', 'Microsoft Word'},
      { 'x', 'Xcode'},
      { 'y', 'YouTube'},
      { 'z', 'Zed'},
      -- '1' for 1Password Quick Access (configured in 1Password Settings)
      { '2', 'Discord'},
      { '3', 'Instagram'},
      { '4', 'LINE'},
      { '5', 'Messenger'},
      { '6', 'Signal'},
      { '7', 'Slack'},
      { '8', 'Telegram'},
      { '9', 'WhatsApp'},
      { '0', 'Zoom.us'},
}
