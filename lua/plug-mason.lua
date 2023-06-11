require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'html',
    'cssls',
  },
  automatic_installation = true,
})
