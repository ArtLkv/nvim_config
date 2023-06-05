local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

---@diagnostic disable-next-line: unused-local
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  ---@diagnostic disable-next-line: unused-local
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- ColorSchemes
  use { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }
  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  -- LSP extra
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use 'onsails/lspkind-nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- Tree
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons', tag = 'nightly' }
  -- Lualine
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  -- Bufferline
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  -- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- Bookmarks
  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'
  -- Terminal
  use { 'akinsho/toggleterm.nvim', tag = '*' }
  -- Other
  use 'tpope/vim-surround'
  use 'windwp/nvim-autopairs'
  use 'folke/todo-comments.nvim'
  use 'numToStr/Comment.nvim'
end)
