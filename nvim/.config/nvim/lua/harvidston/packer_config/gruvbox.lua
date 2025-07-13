-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
	  strings = false,
	  operators = false,
	  comments = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {

	  bright_green = "#b8bb26",
	 --dark0_hard = "#1d2021",
  },
  overrides = {
	Statement = { link = "GruvboxBlue" },
    Keyword = { link = "GruvboxBlue" },
	Constant = { link = "GruvboxOrange" },
    Boolean = { link = "GruvboxOrange" },
    Number = { link = "GruvboxAqua"},
    Float = { link = "GruvboxAqua" },
	    -- javascript
    javaScriptBraces = { link = "GruvboxOrange" },
    javaScriptFunction = { link = "GruvboxAqua" },
    javaScriptIdentifier = { link = "GruvboxRed" },
    javaScriptMember = { link = "GruvboxBlue" },
    javaScriptNumber = { link = "GruvboxPurple" },
    javaScriptNull = { link = "GruvboxPurple" },
    javaScriptParens = { link = "GruvboxOrange" },
		-- python
    pythonBuiltin = { link = "GruvboxOrange" },
    pythonBuiltinObj = { link = "GruvboxOrange" },
    pythonBuiltinFunc = { link = "GruvboxOrange" },
    pythonFunction = { link = "GruvboxYellow" },
    pythonDecorator = { link = "GruvboxYellow" },
    pythonInclude = { link = "GruvboxBlue" },
    pythonImport = { link = "GruvboxBlue" },
    pythonRun = { link = "GruvboxBlue" },
    pythonCoding = { link = "GruvboxBlue" },
    pythonOperator = { link = "GruvboxRed" },
    pythonException = { link = "GruvboxRed" },
    pythonExceptions = { link = "GruvboxPurple" },
    pythonBoolean = { link = "GruvboxPurple" },
    pythonDot = { link = "GruvboxFg3" },
    pythonConditional = { link = "GruvboxRed" },
    pythonRepeat = { link = "GruvboxRed" },
    pythonDottedName = { link = "GruvboxGreenBold" },


},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
