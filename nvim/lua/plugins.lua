-- Packer plugin framework
-- https://github.com/wbthomason/packer.nvim
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Sweet popup search interface
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }

  -- language server 
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-compe'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use { 'ntbbloodbath/galaxyline.nvim',  branch = 'main' } 
  use 'kyazdani42/nvim-web-devicons' -- UTF8 icons for filetypes
  use 'kyazdani42/nvim-tree.lua' -- nerd-tree like browser
  use 'NLKNguyen/papercolor-theme' -- theme
  use 'hashivim/vim-terraform' -- terraform synax
  use 'lewis6991/gitsigns.nvim' -- added / removed in gutter and blame view
  use 'ellisonleao/glow.nvim' -- markdown preview
  use 'vim-test/vim-test' -- execute tests

end)
