-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use 'karb94/neoscroll.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'shaunsingh/nord.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'windwp/nvim-ts-autotag'

  use {
      'neoclide/coc.nvim',
      branch = 'release'
  }
  use 'Mofiqul/dracula.nvim'
  use 'windwp/nvim-autopairs'

  use {'TimUntersberger/neogit', 
        requires = 'nvim-lua/plenary.nvim' 
  }
end)
