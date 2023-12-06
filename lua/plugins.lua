-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'wbthomason/packer.nvim',

  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  {'nvim-lua/plenary.nvim', name="plenary"},
  {'kyazdani42/nvim-web-devicons', name="devicons"},

  {'glepnir/lspsaga.nvim', 
    branch='main',
    dependencies={"devicons"}
  },

  {'ms-jpq/coq_nvim', branch="coq"},
  {'ms-jpq/coq.artifacts', branch="artifacts"},
  
  {'nvim-telescope/telescope.nvim', dependencies={"plenary"}},

  {'nvim-tree/nvim-tree.lua', dependencies={"devicons"}},

  {'akinsho/bufferline.nvim', tag="v2.*", dependencies={"devicons"}},

  'karb94/neoscroll.nvim',

  'lukas-reineke/indent-blankline.nvim',

  {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},

  'navarasu/onedark.nvim',

  'sainnhe/everforest',

  {'nvim-lualine/lualine.nvim', dependencies = {"devicons"}},

  'windwp/nvim-ts-autotag',

  'windwp/nvim-autopairs'
  
})
