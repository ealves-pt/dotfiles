" ============= Vim-Plug ============== "{{{

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
"}}}


call plug#begin('~/.local/share/nvim/plugged')
" ================= Looks and GUI ================== "{{{

Plug 'arcticicestudio/nord-vim'                         " Theme
Plug 'vim-airline/vim-airline'                          " Status line
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  " Sidebar Navigation
Plug 'Xuyuanp/nerdtree-git-plugin'                      " Git status flags in NERDTree
Plug 'jlanzarotta/bufexplorer'                          " enhanced buffer navigation
"}}}

" ================= Functionalities ================== "{{{

" Plug 'github/copilot.vim'                               " github copilot
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP and more
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fzf itself
Plug 'junegunn/fzf.vim'                                 " fuzzy search integration
Plug 'Shougo/context_filetype.vim'                      " better filetype context
Plug 'tyru/caw.vim'                                     " better commenting
Plug 'tpope/vim-fugitive'                               " git support
Plug 'tpope/vim-surround'                               " better surroundings
Plug 'jiangmiao/auto-pairs'                             " auto-pair functionality
Plug 'christianrondeau/vim-base64'                      " base64 shorcuts
Plug 'honza/vim-snippets'                               " actual snippets
Plug 'gpanders/editorconfig.nvim'                       " .editorconfig support
Plug 'iamcco/markdown-preview.nvim',                    " Markdown
     \ { 'do': { -> mkdp#util#install() },
     \ 'for': ['markdown', 'vim-plug']}
"}}}

call plug#end()
"}}}

" ==================== General Config ======================== "{{{

set mouse=a                                             " enable mouse scrolling in all modes
set clipboard+=unnamedplus                              " use system clipboard by default
set tabstop=2 softtabstop=2 shiftwidth=2                " set all tabs to 2 width spaces
set expandtab smarttab                                  " use appropriate number of spaces to insert a tab
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try FiraCode)
set nowrap                                              " disable line wrap
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " show line numbers relative to cursor
set title                                               " tab title as file name
set noshowmode                                          " dont show current mode below statusline
set noshowcmd                                           " get rid of display of last command
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
set emoji                                               " enable emojis
set autoread                                            " automatically reload files when changed outside vim
set background=dark                                     " adjust the dafault color groups for dark backgrounds
set scrolloff=5                                         " always keep some lines visible on screen
set autoindent                                          " copy indent from current line when starting a new line
set smartindent                                         " do smart autoindent when starting a new line
set signcolumn=auto:9                                   " resize to accomodate up to 9 signs
set nostartofline                                       " keep the cursor on the same column
set backspace=indent,eol,start                          " sensible backspacing
set foldlevel=0                                         " open all folds by default
set inccommand=nosplit                                  " visual feedback while substituting
set showtabline=0                                       " always show tabline
set grepprg=rg\ --vimgrep                               " use rg as default grepper

" temp files
set backupdir=/tmp//,.
set directory=/tmp//,.
if v:version >= 703
  set undodir=/tmp//,.
endif

" performance tweaks
set nocursorline
set nocursorcolumn
set lazyredraw
set redrawtime=10000
set synmaxcol=180
" set re=1

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

" theme
colorscheme nord
"}}}

" ======================== Plugin Configurations ======================== "{{{

"" built in plugins
let loaded_netrwPlugin = 1
let g:omni_sql_no_default_maps = 1
let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

"" nord-vim
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1

"" nerdtree
let g:NERDTreeShowHidden = 1

"" airline
let g:airline#extensions#hunks#coc_git = 1

"" coc.nvim
" list of extensions
let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-docker',
      \ 'coc-git',
      \ 'coc-go',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-markdownlint',
      \ 'coc-phpls',
      \ 'coc-sh',
      \ 'coc-snippets',
      \ 'coc-syntax',
      \ 'coc-sql',
      \ 'coc-toml',
      \ 'coc-tsserver',
      \ 'coc-vetur',
      \ 'coc-xml',
      \ 'coc-yaml',
      \ 'coc-yank'
      \ ]

"" fzf
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!vendor/**' --glob '!build/**' --glob '!.idea' --glob '!node_modules'"

"" markdown-preview.nvim
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'google-chrome'
"}}}

" ================= Commands ================== "{{{

"" stop annoying auto commenting on new lines
autocmd BufEnter * set fo-=c fo-=r fo-=o

"" nerdtree
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END

"" coc.nvim
command! -nargs=0 Format :call CocAction('format')                                  " add `:Format` command to format current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')  " add `:OR` command to organize imports of current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)                            " add `:Fold` command to fold current buffer

"" coc.nvim completion popup
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"" fzf
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)

"" advanced grep
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

" ================== Custom Functions ===================== "{{{

" advanced grep(faster with preview)
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

"" coc.nvim show docs on things with K
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
"}}}

" ======================== Custom Mappings ====================== "{{{

"" essentials
let mapleader = ' '
nnoremap <leader>s :update<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
noremap <silent><esc> <esc>:noh<CR><esc>

"" splits
nnoremap <M-s> <C-w>s
nnoremap <M-v> <C-w>v
" circular windoww navigation
nnoremap <tab>   <C-w>w
nnoremap <S-tab> <C-w>W
" switch between splits using meta + {h,j,k,l}
inoremap <M-h> <C-\><C-N><C-w>h
inoremap <M-j> <C-\><C-N><C-w>j
inoremap <M-k> <C-\><C-N><C-w>k
inoremap <M-l> <C-\><C-N><C-w>l
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
" resize splits
nnoremap <M-Up> <C-w>+
nnoremap <M-Down> <C-w>-
nnoremap <M-Left> <C-w><
nnoremap <M-Right> <C-w>>

"" escaping
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <C-c>

"" show mapping on all modes with F1
nmap <F1> <plug>(fzf-maps-n)
imap <F1> <plug>(fzf-maps-i)
vmap <F1> <plug>(fzf-maps-x)

"" moving lines
nnoremap <silent> <C-k> :move-2<CR>
nnoremap <silent> <C-j> :move+<CR>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<CR>gv
xnoremap <silent> <C-j> :move'>+<CR>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv

"" markdown-preview.nvim
au FileType markdown nmap <leader>m :MarkdownPreview<CR>

"" nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

"" fzf
nnoremap <silent> <leader><leader> :Files<CR>
nmap <leader>t :BTags<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
nmap <C-S>f :Rg<CR>

"" fugitive
nmap <leader>gs :Git<CR>
nmap <leader>gl :Commits<CR>
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Git blame<CR>

"" coc.nvim
nnoremap <silent> K :call ShowDocumentation()<CR>       " show documentation
"}}}
