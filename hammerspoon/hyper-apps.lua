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
-- Note: Some keys are intentionally handled by other applications:
-- - 't' for iTerm slide down window (configured in iTerm Settings)
-- - 'u' for Unclutter (configured in Unclutter Settings)  
-- - '1' for 1Password Quick Access (configured in 1Password Settings)
-- ============================================================================


return {
      { 'a', 'Android Studio'},                   -- A for Android Studio
      { 'b', 'Bitwarden'},                        -- B for Bitwarden
      { 'c', 'Google Chrome'},                    -- C for Chrome
      { 'd', 'Docker'},                           -- D for Docker
      { 'e', 'Microsoft Edge'},                   -- E for Edge
      { 'f', 'Messenger'},                        -- F for Messenger
      { 'g', 'Insomnia'},                         -- G for Insomnia
      { 'h', function() hs.reload() end},         -- H for Hammerspoon reload
      { 'i', 'Instagram'},                        -- I for Instagram
      { 'j', 'IntelliJ'},                         -- J for IntelliJ
      { 'k', 'Keynote'},                          -- K for Keynote
      { 'l', 'LINE'},                             -- L for LINE
      { 'm', 'Monkeytype'},                       -- M for Monkeytype
      { 'n', 'Notion'},                           -- N for Notion
      { 'o', 'Finder'},                           -- O for Finder
      { 'p', 'System Preferences'},               -- P for System Preferences
      { 'q', 'QuickTime Player'},                 -- Q for QuickTime
      { 'r', 'Youtube Music'},                    -- R for Radio
      { 's', 'Slack'},                            -- S for Slack
      -- 't' for iTerm slide down window (configured in iTerm Settings)
      -- 'u' for Unclutter (configured in Unclutter Settings)
      { 'v', 'Visual Studio Code'},               -- V for VSCode
      { 'w', 'Microsoft Word'},                   -- W for Word
      { 'x', 'Xcode'},                            -- X for Xcode
      { 'y', 'YouTube'},                          -- Y for YouTube
      { 'z', 'Zoom.us'},                          -- Z for Zoom
      -- '1' for 1Password Quick Access (configured in 1Password Settings)
      { '2', 'iTerm'},                            -- 2 for iTerm
      { '3', 'Calculator'},                       -- 3 for Calculator
      { '4', 'Activity Monitor'},                 -- 4 for Activity Monitor
      { '5', ''},                                 -- 5 for
}
