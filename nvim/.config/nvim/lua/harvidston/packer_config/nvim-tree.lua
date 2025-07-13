vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', ',', '<C-w><Left>')
vim.keymap.set('n', ',', '<C-w>w')
vim.keymap.set('n', 'б', '<C-w><Left>')
vim.keymap.set('n', 'б', '<C-w>w')

