vim.g.mapleader = " "

require('plugins')
require('mappings')

-- Set Global Options
local opt = vim.opt

opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 4
opt.wrap = false

require('conf')

-- Set Colorscheme
vim.cmd[[colorscheme nord]]
