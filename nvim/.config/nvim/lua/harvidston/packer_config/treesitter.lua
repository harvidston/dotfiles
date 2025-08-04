require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "bash", "json", "yaml", "markdown" },

  highlight = {
    enable = true,              -- включить подсветку синтаксиса
    additional_vim_regex_highlighting = false,  -- лучше отключить для скорости и точности
  },

  indent = {
    enable = true,              -- авто-отступы, очень полезно для Python
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",      -- начать выделение под деревом
      node_incremental = "grn",    -- расширить выделение к родителю
      node_decremental = "grm",    -- сузить выделение
      scope_incremental = "grc",
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",   -- выделить функцию целиком
        ["if"] = "@function.inner",   -- выделить тело функции
        ["ac"] = "@class.outer",      -- выделить класс целиком
        ["ic"] = "@class.inner",      -- выделить тело класса
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]m"] = "@function.outer",   -- перейти к следующей функции
        ["]]"] = "@class.outer",      -- перейти к следующему классу
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",   -- к предыдущей функции
        ["[["] = "@class.outer",      -- к предыдущему классу
      },
    },
  },

  matchup = {
    enable = true,   -- для удобного поиска парных скобок и отступов
  },
}

local palette = {
  text       = "#E6EDF3",  -- основной текст / переменные
  dir        = "#E6EDF3",  -- не используется здесь, но в теме
  keyword    = "#ffa656",  -- ключевые слова
  func       = "#ffa656",  -- функции
  method     = "#d2a8ff",  -- методы
  attribute  = "#d2a8ff",  -- декораторы
  typ        = "#ffa656",  -- типы
  builtin    = "#79c0ff",  -- встроенные константы (True/False/None, и т.п.)
  str        = "#a5d6ff",  -- строки
  num        = "#79c0ff",  -- числа
  bool       = "#79c0ff",  -- булевы литералы
  comment    = "#8b949e",  -- комментарии
  operator   = "#ff7b72",  -- операторы
  punctuation= "#E6EDF3",  -- пунктуация
  constant   = "#79c0ff",  -- константы
  property   = "#E6EDF3",  -- свойства / поля
  tag        = "#E6EDF3",  -- теги (HTML/XML)
}

local hl = vim.api.nvim_set_hl

hl(0, "@comment",            { fg = palette.comment, italic = false })
hl(0, "@punctuation",        { fg = palette.punctuation })
hl(0, "@operator",           { fg = palette.operator })

hl(0, "@keyword",            { fg = palette.keyword })
hl(0, "@keyword.function",   { fg = palette.keyword, bold = true })
hl(0, "@keyword.operator",   { fg = palette.operator })
hl(0, "@keyword.return",     { fg = palette.keyword })
hl(0, "@keyword.control",    { fg = palette.keyword })
hl(0, "@keyword.cast",       { fg = palette.keyword })

hl(0, "@function",           { fg = palette.func, bold = true })
hl(0, "@function.call",      { fg = palette.func })
hl(0, "@method",             { fg = palette.method })
hl(0, "@method.call",        { fg = palette.method })
hl(0, "@constructor",        { fg = palette.func })

hl(0, "@variable",           { fg = palette.text })
hl(0, "@variable.builtin",   { fg = palette.builtin })
hl(0, "@variable.member",    { fg = palette.property })
hl(0, "@variable.parameter", { fg = palette.constant })
hl(0, "@constant",           { fg = palette.constant })
hl(0, "@constant.builtin",   { fg = palette.builtin, italic = true })
hl(0, "@namespace",          { fg = palette.text })

hl(0, "@type",               { fg = palette.typ })
hl(0, "@type.builtin",       { fg = palette.typ, italic = true })
hl(0, "@type.qualifier",     { fg = palette.typ })
hl(0, "@storageclass",       { fg = palette.typ })

hl(0, "@property",           { fg = palette.property })
hl(0, "@field",              { fg = palette.property })

hl(0, "@string",             { fg = palette.str })
hl(0, "@string.regex",       { fg = palette.str, underline = true })
hl(0, "@string.escape",      { fg = palette.str, bold = true })
hl(0, "@character",          { fg = palette.str })

hl(0, "@number",             { fg = palette.num })
hl(0, "@boolean",            { fg = palette.bool, bold = true })

hl(0, "@parameter",          { fg = palette.text })
hl(0, "@parameter.reference",{ fg = palette.text })

hl(0, "@delimiter",          { fg = palette.punctuation })
hl(0, "@punctuation.bracket",{ fg = palette.punctuation })
hl(0, "@punctuation.delimiter",{ fg = palette.punctuation })
hl(0, "@punctuation.special",{ fg = palette.punctuation })

hl(0, "@tag",                { fg = palette.tag })
hl(0, "@tag.attribute",      { fg = palette.property })
hl(0, "@tag.delimiter",      { fg = palette.tag })

hl(0, "@text",               { fg = palette.text })
hl(0, "@text.strong",        { bold = true })
hl(0, "@text.emphasis",      { italic = true })
hl(0, "@text.underline",     { underline = true })
hl(0, "@text.strike",        { strikethrough = true })
hl(0, "@text.literal",       { fg = palette.str })
hl(0, "@text.uri",           { fg = palette.str, underline = true })
hl(0, "@text.math",          { fg = palette.num })
hl(0, "@text.reference",     { fg = palette.typ })

hl(0, "@text.diff.add",      { fg = "#A3BE8C" })
hl(0, "@text.diff.delete",   { fg = "#BF616A" })

hl(0, "@todo",               { fg = palette.keyword, bold = true })

hl(0, "@variable.python",        { fg = palette.text })
hl(0, "@variable.member.python", { fg = palette.property })
hl(0, "@variable.parameter.python", { fg = palette.keyword })
hl(0, "@variable.builtin.python", { fg = palette.text })
hl(0, "@parameter.python",       { fg = palette.text })
hl(0, "@namespace.python",       { fg = palette.text })

hl(0, "@operator.python",        { fg = palette.operator })
hl(0, "@attribute.python",  { fg = palette.attribute })

hl(0, "@function.python",        { fg = palette.method })
hl(0, "@function.call.python",   { fg = palette.method })
hl(0, "@function.builtin.python",   { fg = palette.keyword })
hl(0, "@function.method.call.python",   { fg = palette.method })
hl(0, "@method.python",          { fg = palette.method })
hl(0, "@method.call.python",     { fg = palette.method })
hl(0, "@constructor.python",     { fg = palette.method })

hl(0, "@class.python",           { fg = palette.typ })
hl(0, "@type.python",            { fg = palette.typ })
hl(0, "@type.builtin.python",    { fg = palette.builtin })

hl(0, "@keyword.python",         { fg = palette.keyword })
hl(0, "@keyword.import.python",  { fg = palette.operator })
hl(0, "@keyword.type.python",    { fg = palette.operator })
hl(0, "@keyword.operator.python",{ fg = palette.operator })
hl(0, "@keyword.function.python",{ fg = palette.operator })
hl(0, "@keyword.coroutine.python",{ fg = palette.operator })
hl(0, "@keyword.return.python",  { fg = palette.operator })
hl(0, "@keyword.conditional.python",  { fg = palette.operator })
hl(0, "@keyword.exception.python",  { fg = palette.operator })

hl(0, "@module.python",          { fg = palette.keyword })

hl(0, "@string.python",          { fg = palette.str })
hl(0, "@string.escape.python",   { fg = palette.str })
hl(0, "@character.python",       { fg = palette.str })
hl(0, "@number.python",          { fg = palette.num })
hl(0, "@boolean.python",         { fg = palette.bool })
hl(0, "@constant.builtin.python",{ fg = palette.builtin })

hl(0, "@comment.python",         { fg = palette.comment })
hl(0, "@punctuation.python",     { fg = palette.punctuation })
hl(0, "@punctuation.delimiter",  { fg = palette.punctuation })

hl(0, "@property.python",        { fg = palette.property })
hl(0, "@field.python",           { fg = palette.property })
hl(0, "@constant.python",        { fg = palette.constant })

hl(0, "@tag.python",             { fg = palette.tag })
hl(0, "@tag.attribute.python",   { fg = palette.property })
