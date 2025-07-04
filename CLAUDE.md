# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a custom keyboard configuration repository that provides advanced keyboard shortcuts and window management for macOS using Hammerspoon and Karabiner-Elements. It's a fork of jasonrudolph/keyboard with personal customizations.

## Installation and Setup

Run the setup script to install and configure everything:
```bash
./script/setup
```

This script will:
- Install Karabiner-Elements and Hammerspoon via Homebrew
- Link configuration files to the appropriate locations
- Set up login items for both applications
- Configure iTerm2 word navigation

## Configuration Architecture

### Karabiner-Elements Configuration
- **Main config**: `karabiner/karabiner.json`
- **Key remapping**: Caps Lock → Control/Escape, simultaneous key combinations
- **Super Duper Mode**: S+D keys pressed simultaneously enable vi-style navigation
- **Hyper key**: Escape key acts as Shift+Ctrl+Alt+Cmd when held

### Hammerspoon Configuration
- **Entry point**: `hammerspoon/init.lua`
- **Modular design**: Each feature is in its own file
- **Key modules**:
  - `hyper.lua`: Hyper key mode management
  - `hyper-apps.lua`: App launch shortcuts configuration
  - `windows.lua`: Window management functions
  - `windows-bindings.lua`: Window layout mode keybindings
  - `markdown.lua`: Markdown formatting shortcuts
  - `panes.lua`: iTerm2 pane management
  - `delete-words.lua`: Word deletion shortcuts

## Key Features

### Super Duper Mode (S+D)
- Activate by pressing S and D simultaneously
- Provides vi-style navigation: h/j/k/l for arrows
- Space acts as Shift, A as Option, F as Command

### Window Layout Mode (Control+Command+W)
- Quickly arrange windows in common layouts
- h/j/k/l for left/down/up/right half-screen
- i/o/,/. for quarter-screen positioning
- Space for center, Enter for full screen

### Hyper Key Mode (Escape)
- Launch apps with single keystrokes
- Escape key acts as Shift+Ctrl+Alt+Cmd when held
- Customizable app shortcuts in `hyper-apps.lua`
- Examples: Hyper+C for Chrome, Hyper+V for VSCode

### Markdown Mode (Control+M)
- Format text with Markdown shortcuts
- b for bold, i for italic, c for code blocks
- Works in any text field system-wide

## Development Commands

Since this is a configuration repository, there are no traditional build/test commands. Instead:

```bash
# Reload Hammerspoon configuration
# Use Hyper+H or run in Hammerspoon console:
hs.reload()

# Test Karabiner-Elements configuration
# Check logs in Karabiner-Elements EventViewer

# Setup/reinstall
./script/setup
```

## Customization

### App Launch Shortcuts
Edit `hammerspoon/hyper-apps.lua` to modify which apps launch with hyper key combinations.

### Window Management
Edit `hammerspoon/windows-bindings.lua` to customize window layout shortcuts.

### Karabiner Rules
The main Karabiner configuration is in `karabiner/karabiner.json`. Key rules include:
- Caps Lock remapping
- Super Duper Mode (S+D simultaneous)
- Hyper key setup

## File Structure

- `karabiner/`: Karabiner-Elements configuration and backups
- `hammerspoon/`: Hammerspoon Lua scripts
- `script/setup`: Installation and configuration script
- `Brewfile`: Homebrew dependencies
- `inputrc`: iTerm2 word navigation configuration

## Troubleshooting

1. **Hammerspoon not working**: Check Accessibility permissions in System Preferences
2. **Karabiner not responding**: Restart Karabiner-Elements, check System Extensions
3. **Config changes not taking effect**: Reload Hammerspoon with Hyper+H
4. **Setup issues**: Run `./script/setup` again to re-link configurations
