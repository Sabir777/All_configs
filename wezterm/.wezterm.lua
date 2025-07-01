local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

-- 🪟 Окно
config.initial_rows = 40
config.initial_cols = 120

-- 💡 Шрифт и курсор
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" })
config.font_size = 13
config.default_cursor_style = "SteadyBlock" -- ← дефолтный курсор
config.hide_mouse_cursor_when_typing = false

-- 🎨 Цвета в стиле Alacritty Gruvbox
config.colors = {
  foreground = "#ebdbb2",
  background = "#1d2021",
  cursor_bg = "#ebdbb2",
  cursor_border = "#ebdbb2",
  cursor_fg = "#1d2021",
  selection_bg = "#3c3836",
  selection_fg = "#ebdbb2",
  ansi = {
    "#282828", "#cc241d", "#98971a", "#d79921",
    "#458588", "#b16286", "#689d6a", "#a89984",
  },
  brights = {
    "#928374", "#fb4934", "#b8bb26", "#fabd2f",
    "#83a598", "#d3869b", "#8ec07c", "#ebdbb2",
  },
}

-- 🖱 Поведение мыши
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "NONE",
    action = act.CompleteSelection "Clipboard",
  },
  {
    event = { Down = { streak = 1, button = "Right" } },
    mods = "NONE",
    action = act.PasteFrom "Clipboard",
  },
}

-- 📋 Расширение границ выделения
config.selection_word_boundary = " \t\n{}[]()\"'`,;:│=&!%"

return config
