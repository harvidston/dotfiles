local custom_lualine_theme = {
  normal = {
    a = { fg = '#1F1F28', bg = '#7E9CD8', gui = 'bold' },
    b = { fg = '#7E9CD8', bg = '#0D0D10' },
    c = { fg = '#C8C093', bg = '#0D0D10' },
  },
  insert = {
    a = { fg = '#1F1F28', bg = '#98BB6C', gui = 'bold' },
    b = { fg = '#98BB6C', bg = '#0D0D10' },
  },
  visual = {
    a = { fg = '#1F1F28', bg = '#997EBC', gui = 'bold' },
    b = { fg = '#997EBC', bg = '#0D0D10' },
  },
  replace = {
    a = { fg = '#1F1F28', bg = '#E46876', gui = 'bold' },
  },
  command = {
    a = { fg = '#1F1F28', bg = '#c6a266', gui = 'bold' },
    b = { fg = '#c6a266', bg = '#0D0D10' },
  },
  inactive = {
    a = { fg = '#769ddd', bg = '#1F1F28', gui = 'bold' },
    b = { fg = '#7C7C7C', bg = '#1F1F28' },
    c = { fg = '#7C7C7C', bg = '#1F1F28' },
  },
}
require('lualine').setup {
  options = {
    icons_enabled = false,
    --theme = 'kanagawa',
    theme = custom_lualine_theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
	disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
