" Keys and Shortcuts

"" GENERAL

" ----------------------------------------------------------------------------
" Map leader
" ----------------------------------------------------------------------------
let mapleader = ' '
let maplocalleader = ' '

" ----------------------------------------------------------------------------
" Resize splits
" ----------------------------------------------------------------------------
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

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
nnoremap <Leader>s :update<CR>

" ----------------------------------------------------------------------------
" Quit
" ----------------------------------------------------------------------------
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>

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
nnoremap <silent> <C-k> :move-2<CR>
nnoremap <silent> <C-j> :move+<CR>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<CR>gv
xnoremap <silent> <C-j> :move'>+<CR>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" ----------------------------------------------------------------------------
" nerdtree
" ----------------------------------------------------------------------------
nnoremap <C-n> :NERDTreeToggle<CR>

" ----------------------------------------------------------------------------
" fzf
" ----------------------------------------------------------------------------
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<CR>"
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>

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
" ----------------------------------------------------------------------------
nmap <Leader>g :Git<CR>gg<c-n>
nmap <Leader>d :Gdiffsplit<CR>
nnoremap <silent> <Leader>ghp  :GitGutterPreviewHunk<CR>
nnoremap <silent> <Leader>ghk :GitGutterPrevHunk<CR>
nnoremap <silent> <Leader>ghj :GitGutterNextHunk<CR>
nnoremap <silent> <Leader>ghu :GitGutterUndoHunk<CR>

