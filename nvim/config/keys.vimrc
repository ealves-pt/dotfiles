" Keys and Shortcuts

" GENERAL

" ----------------------------------------------------------------------------
"  Disabling arrow keys for navigation
" ----------------------------------------------------------------------------
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ----------------------------------------------------------------------------
" Map leader
" ----------------------------------------------------------------------------
let mapleader = ' '
let maplocalleader = ' '

" ----------------------------------------------------------------------------
" Clipboard
" ----------------------------------------------------------------------------
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p

" ----------------------------------------------------------------------------
" Save
" ----------------------------------------------------------------------------
nnoremap <Leader>s :update<cr>

" ----------------------------------------------------------------------------
" Quit
" ----------------------------------------------------------------------------
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

" ----------------------------------------------------------------------------
" jk | Escaping!
" ----------------------------------------------------------------------------
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <C-c>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" ----------------------------------------------------------------------------
" nerdtree
" ----------------------------------------------------------------------------
nnoremap <C-n> :NERDTreeToggle<cr>

" ----------------------------------------------------------------------------
" vim-commentary
" ----------------------------------------------------------------------------
" map  gc  <Plug>Commentary
" nmap gcc <Plug>CommentaryLine

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>d :Gdiff<CR>

" ----------------------------------------------------------------------------
" fzf
" ----------------------------------------------------------------------------
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>

" LANGUAGE

" ----------------------------------------------------------------------------
" Vue
" ----------------------------------------------------------------------------
autocmd FileType vue syntax sync fromstart

" ----------------------------------------------------------------------------
" Go
" ----------------------------------------------------------------------------
autocmd FileType go nmap <Leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>b <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>gt :GoDeclsDir<cr>
au FileType go nmap <Leader>ga <Plug>(go-alternate-edit)
au FileType go nmap <F12> <Plug>(go-def)
