require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "bash", "json", "yaml", "markdown" }, -- языки, которые хочешь поддерживать

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

