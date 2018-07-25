" Plugin Configurations

" GENERAL

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" ale
let g:ale_enabled = 0
let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" ale for airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'

" nerdtree
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" fzf
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" Comments
let g:caw_operator_keymappings = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" neosnippet
let g:neosnippet#enable_completed_snippet = 1

" LanguageClient-neovim
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}

" LANGUAGE

"" Go

" fatih/vim-go
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_term_enabled = 1
let g:go_term_mode = "split"
let g:go_snippet_engine = "neosnippet"
" if executable('gopls')
"   let g:go_def_mode = 'gopls'
" else
"   echo "'gopls' not installed!\n"
"   :cq
" endif

"" JavaScript/JSX

" let g:LanguageClient_serverCommands = {}
if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  " Use LanguageServer for omnifunc completion
  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
else
  echo "javascript-typescript-stdio not installed!\n"
  :cq
endif
