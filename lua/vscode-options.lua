-- [[ Vscode keymaps and options ]]

local vscode = require('vscode')
vim.notify = vscode.notify

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>pf', vim.cmd.Ex, { desc = 'Shows workspace files' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Keeps cursor at the begging after perfomong default action' })

vim.keymap.set('x', '<leader>P', [["_dP]], { desc = 'Paste over while maintaing buffer' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Deletes without overriding buffer' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy to clipboard' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = 'Copy till end of line to clipboard' })

vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disables it' })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat buffer' })
