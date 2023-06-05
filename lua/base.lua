local opt = vim.opt

-- numbers line
opt.number = true
opt.relativenumber = true

-- encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- scrolling
opt.scrolloff = 5
opt.sidescrolloff = 5

-- search
opt.hlsearch = true
opt.incsearch = true

-- tabs
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- mouse
opt.mouse = 'a'
opt.clipboard:append('unnamedplus')

-- case
opt.ignorecase = true
opt.smartcase = true

-- backup
opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

-- sign line
opt.signcolumn = 'yes'
opt.list = true

-- customization
opt.termguicolors = true
--opt.cursorline = true
opt.background = 'dark'
