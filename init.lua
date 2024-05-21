-- global setting
require("globals")
require("opts")
require("keyboard")


vim.cmd([[
  filetype plugin indent on
  syntax on
  filetype plugin on
  autocmd BufWritePre * :%s/\s\+$//e

  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
  endif

  autocmd BufRead * normal zR

  augroup LuaHighligst
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
  augroup END

]])

-- Manage plugins with Packer.
require("plugin")
vim.cmd([[
  hi! Normal ctermbg=NONE guibg=NONE
  hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
]])

vim.cmd [[colorscheme moonfly]]

require('hardline').setup {}

vim.cmd([[
    autocmd VimEnter * lua OpenShellWin()
]])

function OpenShellWin()
    vim.api.nvim_command('split')
    vim.api.nvim_command('terminal')
    vim.api.nvim_command('horizontal resize 10')
    vim.api.nvim_command('wincmd p')
end
