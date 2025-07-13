vim.opt.swapfile = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd 'set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
				
require("kanagawa").setup({
  theme = "wave",
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "#15151A", -- глобальный цвет фона для окон и split'ов
          bg = "#15151A",        -- основной фон
        }
      }
    }
  },
  overrides = function(colors)
    return {
      Normal = { bg = "#15151A", fg = colors.fg }, -- Цвет фона
      NormalNC = { bg = "#15151A" }, -- Цвет фона неактивных окон
	  SignColumn = { bg = "#15151A" },
	  LineNr = {
        fg = colors.dimmed3,  -- Цвет цифр номеров строк
        bg = "#15151A",       -- Цвет фона для столбца с номерами строк
      },
	  Comment = { fg = "#67665F", italic = false }, -- Цвет комментариев
      --CursorLine = { bg = "#2d2d3a" },-- Цвет текущей строки
      Visual = { bg = "#393646" },-- Цвет выделения
    }
  end
})
vim.cmd("colorscheme kanagawa")

--vim.opt.hlsearch = false
--vim.opt.incsearch = true

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Exit from input mode
map('i', 'kk', '<Esc>')
map('i', 'лл', '<Esc>')
map('v', '<leader>y', '"+y')
map('n', '<leader>p', '"+p')
map('n', 'm', 'ci')
-- Save file changes
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>ы', ':w<CR>')
-- Easy select all of file
map('n', '<leader>sa', 'ggVG<c-$>')
map('n', '<leader>ыф', 'ggVG<c-$>')
-- Move cursor to the end of the line
map('n', ';', '$')
map('n', 'ж', '$')
map('v', ';', '$')
map('v', 'ж', '$')
-- Move cursor to the end of the line to insert
map('n', 'L', 'A')
map('v', 'L', 'A')
map('n', 'Д', 'A')
map('v', 'Д', 'A')
-- Move cursor to the begining of the line to insert
map('n', 'H', 'I')
map('v', 'H', 'I')
map('n', 'Р', 'I')
map('v', 'Р', 'I')
