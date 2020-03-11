" Plugin Configurations

" GENERAL

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" ale
let g:ale_enabled = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint'],
      \ 'typescript': ['tsserver', 'tslint']
      \}

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

" Git
let g:gitgutter_map_keys = 0

" Comments
let g:caw_operator_keymappings = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" LANGUAGE

"" Markdown

" iamcco/markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

"" Go

" fatih/vim-go
let g:go_def_mapping_enabled = 0
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_snippet_engine = 'ultisnips'
