vim.cmd([[
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *  NERDTree | if argc() > 0 || exists("s:std_in") |  wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd Syntax nerdtree syntax clear NERDTreeFlags

" auto exec NERDTree when switch tab
autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' && &modifiable | if getcwd() !=# expand('%:p:h') | cd %:p:h | NERDTreeCWD | wincmd p | endif

" auto refresh nerdtree
autocmd BufWritePost * NERDTreeFocus | execute 'normal R'


]])
