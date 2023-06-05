vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set({ 'n', 'v' }, '<up>', '')
keymap.set({ 'n', 'v' }, '<down>', '')
keymap.set({ 'n', 'v' }, '<left>', '')
keymap.set({ 'n', 'v' }, '<right>', '')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')
keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

keymap.set('n', '<leader>md', '<cmd>MarkdownPreview<cr>')
