local wezterm = require 'wezterm'
local config = wezterm.config_builder()

wezterm.on("update-text-style", function(window, pane, style)
  if style.italic then
    style.italic = false
  end
  return style
end)

config.window_decorations = "RESIZE"
config.initial_cols = 220
config.initial_rows = 63

config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false

config.font = wezterm.font {
  family = 'JetBrains Mono',
  weight = 'Regular',
}

config.font_rules = {
  {
    italic = true,
    intensity = "Normal",
    font = wezterm.font {
      family = 'JetBrains Mono',
      weight = 'Regular',
      italic = false,
    },
  },
}

config.font_size = 13.0
config.color_scheme = "kanagawabones"


config.colors = {
  --foreground = "#ADB5BD",
  foreground = "#8b949e",
  background = "#0D0D10",
  cursor_bg = "#ADB5BD",
  selection_fg = "#8b949e",
  selection_bg = "#18181c",
  ansi = {
    "#1f1f28", -- 0: обычно фон или ненавязчивый текст
    "#FFA656", -- 1: ошибки, критические сообщения
    "#FFFFFF", -- 2: успешные действия, OK
    "#FFFFFF", -- 3: предупреждения, заметки
    "#FFFFFF", -- 4: имена файлов, ссылки, заголовки
    "#FFFFFF", -- 5: ключевые слова, теги
    "#FFFFFF", -- 6: параметры, числа, типы
    "#6c757d", -- 7: основной цвет текста по умолчанию
  },
  brights = {
    "#727169", -- часто используется как фон или затенённый текст
    "#FFA656", -- ошибки, предупреждения
    "#FFFFFF", -- успех, OK, "всё хорошо"
    "#e6c384", -- используется для заголовков, уведомлений
    "#fca311", -- имена файлов, гиперссылки
    "#938aa9", -- ключевые слова, акценты
    "#FFFFFF", -- директории, параметры, числовые значения
    "#dcd7ba", -- основной текст
  },
  tab_bar = {
    background = "#0D0D10",

    active_tab = {
      bg_color = "#ADB5BD",
      fg_color = "#000000",
      intensity = "Half",
      underline = "None",
      italic = false,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = "#0D0D10",
      fg_color = "#ADB5BD",
      intensity = "Half",
      italic = false,
    },

    inactive_tab_hover = {
      bg_color = "#0D0D10",
      fg_color = "#ADB5BD",
      intensity = "Half",
    },

    new_tab = {
      bg_color = "#0D0D10",
      fg_color = "#ADB5BD",
      intensity = "Half",
    },

    new_tab_hover = {
      bg_color = "#ADB5BD",
      fg_color = "#1E1E2E",
      italic = false,
      intensity = "Half",
    },
  },
}

config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 0,
}

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.4,
}

config.keys = {
  {
    key = 'v',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = "t",
    mods = "CTRL",
    action = wezterm.action.SpawnTab("CurrentPaneDomain"),
  },
  {
    key = 'x',
    mods = 'CTRL|SHIFT',
    action = wezterm.action_callback(function(window, pane)
      local right = pane:split {
        direction = 'Right',
        size = 0.5,
      }

      right:split {
        direction = 'Down',
        size = 0.5,
      }

      window:perform_action(wezterm.action.ActivatePaneDirection('Left'), right)

      pane:split {
        direction = 'Down',
        size = 0.5,
      }
    end),
  },
  { key = "h", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "l", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "k", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "j", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Down") },
  { key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentPane { confirm = false } },
}

return config
