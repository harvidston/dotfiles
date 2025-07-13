local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Python форматтеры и линтеры
    null_ls.builtins.formatting.black,      -- форматирование
    null_ls.builtins.diagnostics.ruff,      -- диагностика
    -- null_ls.builtins.formatting.isort,   -- авто-сортировка импортов (опционально)
  },
})

