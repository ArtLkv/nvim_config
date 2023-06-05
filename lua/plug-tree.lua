vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

require('nvim-tree').setup({
  sort_by = "case_sensitive",
  view = {
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
        return {
          border = 'rounded',
          relative = 'editor',
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
      end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
  actions = {
    open_file = { quit_on_open = true }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  },

  filters = {
    custom = { '^.git$', '^node_modules$' }
  },
  git = {
    enable = false
  },

  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = ''
    }
  },
  on_attach = function(bufnr)
    vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>',
      { desc = 'toggle', buffer = bufnr, noremap = true, silent = true, nowait = true })
  end
})
vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>')
