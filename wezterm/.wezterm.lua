--[[ LOCAL VARIABLES]]
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

--[[ CONFIG ]]
-- This is where you actually apply your config choices
config.automatically_reload_config = true
config.max_fps = 144
config.animation_fps = 1
config.term = "xterm-256color" -- Set the terminal type

--[[ COLORSCHEME ]]
-- changing font and the color scheme:
-- config.color_scheme = 'Tokyo Night Storm'
config.color_scheme = 'Catppuccin Mocha'

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

config.initial_rows = 30
config.initial_cols = 150

--[[ CURSOR ]]
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 400

--[[ Custom Keybindings ]]
config.keys = {
    -- copy/paste --
   { key = 'c',          mods = 'CTRL',  action = act.CopyTo('Clipboard') },
   { key = 'v',          mods = 'CTRL',  action = act.PasteFrom('Clipboard') },

   -- Ctrl-click will open the link under the mouse cursor
   --{ event = { Up = { streak = 1, button = 'Left' } }, mods = 'CTRL', action = act.OpenLinkAtMouseCursor},


   {
    -- Split to Horizontal Pane
    key = '.',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    -- Split to Vertical Pane
    key = '-',
    mods = 'ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    -- Close current Pane or Tab
    key = 'q',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- Resize Panes
  {
    key = 'h',
    mods = 'ALT',
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'j',
    mods = 'ALT',
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'k',
    mods = 'ALT',
    action = act.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'l',
    mods = 'ALT',
    action = act.AdjustPaneSize { 'Right', 5 },
  },
  -- Create new Tab
  {
    key = 't',
    mods = 'SHIFT|ALT',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  -- Switch Panes
  {
    key = 'h',
    mods = 'SHIFT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'SHIFT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'SHIFT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'SHIFT',
    action = act.ActivatePaneDirection 'Down',
  },
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
    -- Paste on Mouse Click
    {
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

-- and finally, return the configuration to wezterm
return config
