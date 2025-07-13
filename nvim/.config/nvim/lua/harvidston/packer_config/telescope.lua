local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

vim.keymap.set('n', '<leader>o', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>i', builtin.live_grep, {})

require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<leader>o"] = actions.close,
            },
            n = {
                ["<leader>o"] = actions.close,
            },
        },
    },
})
