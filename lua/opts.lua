--`vim.opt` sets global settings
local set = vim.opt

set.encoding = "utf-8"
set.autoindent = true
set.cursorline = true
set.autoread = true
-- set.autochdir = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.showmatch = true
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.splitright = true
set.splitbelow = true
set.termguicolors = true
set.wildignore = { "*/cache/*", "*/tmp/*" }
set.smartindent = true
set.swapfile = false
set.mouse = a
-- show line number
vim.wo.number = true
-- highlight current line
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "160"
