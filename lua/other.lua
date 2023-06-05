require('Comment').setup({})
require('nvim-autopairs').setup({
  disable_filetype = { 'TelescopePrompt', 'vim' },
})
require('todo-comments').setup({})
require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]]
})
