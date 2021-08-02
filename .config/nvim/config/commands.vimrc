" Commands

"" GENERAL

"" LANGUAGE

" ----------------------------------------------------------------------------
" Vue
" ----------------------------------------------------------------------------
autocmd FileType vue syntax sync fromstart

" ----------------------------------------------------------------------------
" TypeScript
" ----------------------------------------------------------------------------
autocmd FileType typescript nnoremap <silent> <Leader>gd :TSDef<CR>

" ----------------------------------------------------------------------------
" Markdown
" ----------------------------------------------------------------------------
" Detect .md as markdown
autocmd BufNewFile,BufReadPost *md set filetype=markdown
" Stop highlighting underscores in Markdown, seriously, stop it
autocmd BufNewFile,BufRead,BufEnter *.md,*.markdown :syntax match markdownIgnore "_"

" ----------------------------------------------------------------------------
" Go
" ----------------------------------------------------------------------------
" autocmd FileType go nnoremap <silent> <Leader>gr  :GoRename<CR>
" autocmd FileType go nnoremap <silent> <Leader>gd  :GoDef<CR>
" autocmd FileType go nnoremap <silent> <Leader>gdc :GoDebugContinue<CR>
" autocmd FileType go nnoremap <silent> <Leader>gdb :GoDebugBreakpoint<CR>
" autocmd FileType go nnoremap <silent> <Leader>gdn :GoDebugNext<CR>
