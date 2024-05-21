-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require("plugin.coc")
require("plugin.nerdtree")
require("plugin.devicons")
require("plugin.moonfly")
-- require("plugin.airline")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }
  use { 'neoclide/coc.nvim', branch='release' }
  use { "bluz71/vim-moonfly-colors", name = "moonfly"}
  use { 'ojroques/nvim-hardline' }
  use { 'ryanoasis/vim-devicons' }
  use { 'preservim/nerdtree' }
  use { 'tiagofumo/vim-nerdtree-syntax-highlight' }

  vim.cmd [[ syntax on ]]
end)
