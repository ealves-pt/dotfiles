" Plugin Configurations

" GENERAL

" ===================== nord-vim ====================
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1

" ===================== vim-airline ====================
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline_extensions = [
  \ 'branch',
  \ 'coc',
  \ 'fugitiveline',
  \ 'fzf',
  \ 'hunks',
  \ 'keymap',
  \ 'quickfix',
  \ 'term',
  \ 'wordcount'
  \ ]
let g:airline_focuslost_inactive = 1
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z', 'error', 'warning' ]
  \ ]

" ====================== nerdtree ======================
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
let g:NERDTreeShowHidden = 1

" ======================== fzf =========================
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
    \}

" ==================== git-gutter ======================
let g:gitgutter_map_keys = 0

" ===================== comments =======================
let g:caw_operator_keymappings = 1

" ===================== vim-json =======================
let g:vim_json_syntax_conceal = 0

" ====================== coc.nvim ======================
" Settings
let g:coc_global_extensions = [
  \ 'coc-sh',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-markdownlint',
  \]
let g:coc_selectmode_mapping = 0
hi CocErrorSign   ctermfg=15 ctermbg=236
hi CocHintSign    ctermfg=15 ctermbg=236
hi CocInfoSign    ctermfg=15 ctermbg=236
hi CocWarningSign ctermfg=15 ctermbg=236
hi default link CocHintFloat Pmenu
hi default link CocInfoFloat Pmenu
hi default link CocErrorFloat Pmenu
hi default link CocWarningFloat Pmenu
hi default link CocRustChainingHint Comment

" LANGUAGE

" =============== markdown-preview.nvim ================
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

" ======================= vim-go =======================
let g:go_auto_type_info = 0
let g:go_code_completion_enabled = 0
let g:go_decls_mode = 'fzf'
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_echo_go_info = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_gopls_enabled = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_list_type = 'quickfix'
let g:go_statusline_duration = 10000
let g:go_textobj_enabled = 0
let g:go_addtags_transform = "snakecase"

" =================== vim-terraform ===================
let g:terraform_fmt_on_save=1
let g:terraform_align=1
