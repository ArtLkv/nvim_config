local on_attach = function(_, bufnr)
  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilites = capabilities,
  group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  lua_ls = function()
    require('lspconfig').lua_ls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end,
  html = function()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    require('lspconfig').html.setup({
      capabilities = capabilities,
      cmd = { 'vscode-html-language-server', '--stdio' },
      filetypes = { 'html' },
      init_options = {
        configurationSection = { 'html', 'css', 'javascript' },
        embeddedLanguages = {
          css = true,
          javascript = true,
        },
        providedFormatter = true,
      },
      settings = {},
      single_file_support = true,
    })
  end,
  cssls = function()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    require('lspconfig').cssls.setup({
      capabilities = capabilities,
      cmd = { 'vscode-css-language-server', '--stdio' },
      filetypes = { 'css', 'scss', 'less' },
      settings = {
        css = { validate = true },
        less = { validate = true },
        scss = { validate = true },
      },
      single_file_support = true,
    })
  end,
})
