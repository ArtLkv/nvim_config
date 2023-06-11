local keymap = vim.keymap

require('lspsaga').setup({
  ui = {
    kind = require('catppuccin.groups.integrations.lsp_saga').custom_kind(),
    border = 'rounded',
  },
})

keymap.set('n', '<leader>k', '<cmd>Lspsaga hover_doc<cr>')
keymap.set({ 'n', 'v' }, '<leader>ca', '<cmd>Lspsaga code_action<cr>')
keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<cr>')
keymap.set('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<cr>')
keymap.set('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<cr>')
keymap.set('n', '<leader>o', '<cmd>Lspsaga outline<cr>')
keymap.set('n', 'gh', '<cmd>Lspsaga lsp_finder<cr>')
keymap.set('n', '<leader>rn', '<cmd>Lspsaga rename<cr>')
