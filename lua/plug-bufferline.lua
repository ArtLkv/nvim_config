require('bufferline').setup({
  options = {
    style_preset = require('bufferline').style_preset.minimal,
    color_icons = true,
    show_buffer_close_icons = false,
    diagnostics = 'nvim_lsp',
    ---@diagnostic disable-next-line: unused-local
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "(" .. count .. ")"
    end,
  },
})

local keymap = vim.keymap

local function delete_buffer()
  vim.cmd [[update]]
  vim.cmd [[bdelete!]]
end

keymap.set('n', '<leader>bq', delete_buffer)
keymap.set('n', '<leader>bp', '<cmd>BufferLineTogglePin<cr>')
keymap.set('n', '<leader>bs', '<cmd>BufferLinePick<cr>')
keymap.set('n', '<C-h>', '<cmd>BufferLineCyclePrev<cr>')
keymap.set('n', '<C-l>', '<cmd>BufferLineCycleNext<cr>')
