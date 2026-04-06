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
-- - 'w' for Window Layout Mode (configured in windows-bindings.lua)
-- - 'u' for Unclutter (configured in Unclutter Settings)
-- - '1' for 1Password Quick Access (configured in 1Password Settings)
-- ============================================================================

return {
    { 'a', 'Android Studio' },
    { 'b', 'Google Chrome' },                                                       -- B for Browser
    { 'c', 'Claude' },
    { 'd', 'Discord' },
    { 'e', function() hs.eventtap.keyStroke({ 'cmd', 'ctrl' }, 'space') end },      -- E for Emoji picker
    { 'f', 'Finder' },
    { 'g', 'Insomnia' },                                                            -- G for GraphQL
    { 'h', function() hs.reload() end },                                            -- H for Hammerspoon reload
    { 'i', 'Instagram' },
    { 'j', 'IntelliJ' },
    { 'k', 'Keynote' },
    { 'l', 'LINE' },
    { 'm', 'Monkeytype' },
    { 'n', 'Notion' },
    { 'o', '' },                                                                    -- O is empty (unused) currently
    { 'p', 'Preview' },
    { 'q', 'QuickTime Player' },
    { 'r', 'Youtube Music' },                                                       -- R for Radio
    { 's', 'Safari' },
    { 't', 'iTerm' },
    -- 'u' reserved for Unclutter (configured in Unclutter Settings)
    { 'v', 'Visual Studio Code' },
    -- 'w' reserved for Window Layout Mode (configured in windows-bindings.lua)
    { 'x', 'Xcode' },
    { 'y', 'YouTube' },
    { 'z', 'Zed' },
    -- '1' reserved for 1Password Quick Access (configured in 1Password Settings)
    { '2', 'Discord' },
    { '3', 'Instagram' },
    { '4', 'LINE' },
    { '5', 'Facebook' },
    { '6', 'Signal' },
    { '7', 'Slack' },
    { '8', 'Telegram' },
    { '9', 'WhatsApp' },
    { '0', 'Zoom.us' },
    { ',', 'System Preferences'},
}
