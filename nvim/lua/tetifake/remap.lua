vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<C-c>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-c>', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>s', '<cmd>lua require("switch_case").switch_case()<CR>', {noremap = true, silent = true})
