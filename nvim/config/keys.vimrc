" Keys and Shortcuts

"" GENERAL

" ----------------------------------------------------------------------------
" Map leader
" ----------------------------------------------------------------------------
let mapleader = ' '
let maplocalleader = ' '

" ----------------------------------------------------------------------------
"  Disabling arrow keys for navigation
" ----------------------------------------------------------------------------
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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

" Git

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap <Leader>g :Git<CR>gg<c-n>
nmap <Leader>d :Gdiffsplit<CR>
nnoremap <silent> <Leader>ghp  :GitGutterPreviewHunk<CR>
nnoremap <silent> <Leader>ghk :GitGutterPrevHunk<CR>
nnoremap <silent> <Leader>ghj :GitGutterNextHunk<CR>
nnoremap <silent> <Leader>ghu :GitGutterUndoHunk<CR>

" LANGUAGE

" ----------------------------------------------------------------------------
" Vue
" ----------------------------------------------------------------------------
autocmd FileType vue syntax sync fromstart

" ----------------------------------------------------------------------------
" TypeScript
" ----------------------------------------------------------------------------
autocmd FileType typescript nnoremap <silent> <Leader>gd :TSDef<CR>

" ----------------------------------------------------------------------------
" Go
" ----------------------------------------------------------------------------
autocmd FileType go nnoremap <silent> <Leader>gr  :GoRename<CR>
autocmd FileType go nnoremap <silent> <Leader>gd  :GoDef<CR>
autocmd FileType go nnoremap <silent> <Leader>gdc :GoDebugContinue<CR>
autocmd FileType go nnoremap <silent> <Leader>gdb :GoDebugBreakpoint<CR>
autocmd FileType go nnoremap <silent> <Leader>gdn :GoDebugNext<CR>
