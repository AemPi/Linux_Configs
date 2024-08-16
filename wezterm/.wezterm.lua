--[[ LOCAL VARIABLES]]
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

--[[ CONFIG ]]
-- This is where you actually apply your config choices
config.automatically_reload_config = true

--[[ COLORSCHEME ]]
-- changing font and the color scheme:
config.color_scheme = 'Tokyo Night Storm'

--[[ FONT ]]
--config.font = wezterm.font("VictorMono Nerd Font")
config.font = wezterm.font("JetBrains Mono")
config.font_size = 10.0

--[[ TABBAR ]]
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

--[[ WINDOW ]]
config.window_padding = {
  left = '0cell', --default is 1
  right = '0cell', --default is 1
  top = '0cell', --default is 0.5
  bottom = '0cell', --default is 0.5
}

--[[ Custom Keybindings ]]
config.keys = {
    -- copy/paste --
   { key = 'c',          mods = 'CTRL',  action = act.CopyTo('Clipboard') },
   { key = 'v',          mods = 'CTRL',  action = act.PasteFrom('Clipboard') },

   -- Ctrl-click will open the link under the mouse cursor
   --{ event = { Up = { streak = 1, button = 'Left' } }, mods = 'CTRL', action = act.OpenLinkAtMouseCursor},
}

--[[ Custom Mouse Bindings ]]
config.mouse_bindings = {
  -- Scrolling up while holding CTRL increases the font size
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'CTRL',
    action = act.IncreaseFontSize,
  },

  -- Scrolling down while holding CTRL decreases the font size
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'CTRL',
    action = act.DecreaseFontSize,
  },

  -- Ctrl-click will open the link under the mouse cursor
  { event = { Up = { streak = 1, button = 'Left' } }, mods = 'CTRL', action = act.OpenLinkAtMouseCursor},

  -- Copy on Mouse Selection
  {
      event={Up={streak=1, button="Left"}},
      mods="NONE",
      action=wezterm.action{CompleteSelectionOrOpenLinkAtMouseCursor="Clipboard"},
      -- NOTE: the default action is:
      -- action=wezterm.action{CompleteSelectionOrOpenLinkAtMouseCursor="PrimarySelection"},
    },
}

-- and finally, return the configuration to wezterm
return config
