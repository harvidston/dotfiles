vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd 'set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
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
map('n', '"', [["_ci"]], opts)
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
