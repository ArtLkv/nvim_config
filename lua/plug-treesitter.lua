local function treesitter_disable(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

require('nvim-treesitter.configs').setup({
  ensure_installed = { 'markdown', 'markdown_inline', 'lua' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, bufnr)
      return treesitter_disable(lang, bufnr)
    end,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },
})
