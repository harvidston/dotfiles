require('kanagawa').setup({
  compile        = false,
  undercurl      = true,
  commentStyle   = { italic = false },
  keywordStyle   = { italic = false },
  statementStyle = { bold = true },
  terminalColors = true,
  transparent    = false,
  dimInactive    = false,

  colors = {
    palette = {
      bg         = "#0D0D10",
      bg_dark    = "#181820",
      fg         = "#E6EDF3",
	  visual     = "#18181c",
	  comment    = "#8b949e",
	  cursor     = "#29273B",
    },
    theme = {
      all = {
        ui = {
          bg        = "#0D0D10",
          bg_gutter = "#0D0D10",
        },
      },
    },
  },

  overrides = function(colors)
    return {
      Normal     = { fg = colors.palette.fg, bg = colors.palette.bg },
      CursorLine = { bg = colors.palette.cursor},
      Visual     = { fg = colors.palette.comment, bg = colors.palette.visual},
      Comment    = { fg = colors.palette.comment, italic = false },
      LineNr     = { fg = colors.palette.comment, bg = colors.palette.bg },
      Cursor     = { fg = colors.palette.bg, bg = colors.palette.fg },
      NvimTreeNormal = { fg = colors.palette.comment },
      NvimTreeOpenedFile = { fg = colors.palette.comment },
      NvimTreeFolderName = { fg = colors.palette.comment },
      NvimTreeOpenedFolderName = {fg = colors.palette.comment},
	  NvimTreeFolderIcon = {fg = colors.palette.comment},
	  NvimTreeCursorLine = { bg = colors.palette.visual, fg = colors.palette.fg},
    }
  end,

  theme = "wave",
  background = { dark = "wave", light = "lotus" },
})
