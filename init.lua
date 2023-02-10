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
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('conf')

-- Set Colorscheme
--require('onedark').load()
vim.cmd([[
set background=dark
let g:everforest_background='soft'
colorscheme everforest
]])
