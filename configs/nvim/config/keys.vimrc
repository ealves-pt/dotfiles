" ----------------------------------------------------------------------------
" Clipboard
" ----------------------------------------------------------------------------
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p

" ----------------------------------------------------------------------------
" coc.nvim
" ----------------------------------------------------------------------------
" Bindings
nmap <silent> <leader>df <Plug>(coc-definition)
nmap <silent> <leader>dc <Plug>(coc-declaration)
nmap <silent> <leader>im <Plug>(coc-implementation)
nmap <silent> <leader>td <Plug>(coc-type-definition)
nmap <silent> <leader>rf <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
" Function objects
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

"" Git

" ----------------------------------------------------------------------------
" vim-fugitive
" ---------------------------------------------------------------------------
nmap <Leader>gis :Git<CR>
nmap <Leader>gid :Gdiffsplit<CR>
nmap <Leader>gib <cmd>Git blame<CR>

