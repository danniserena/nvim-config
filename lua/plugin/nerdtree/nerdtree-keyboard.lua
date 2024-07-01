vim.cmd([[
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeCWD<CR>
"" conflict with ctags return keys
"" nnoremap <C-t> :NERDTreeToggle<CR>
unmap <C-t>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
]])
