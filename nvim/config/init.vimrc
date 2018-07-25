" init.vimrc - Collection of all plugins
call plug#begin('~/.local/share/nvim/plugged')

" GENERAL IMPROVEMENTS

" File context type
Plug 'Shougo/context_filetype.vim'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'

" Autocomplete - LanguageClient-neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': [
        \ 'bash install.sh',
        \ 'npm i -g javascript-typescript-langserver'
      \ ],
    \ }

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Color
Plug 'flazz/vim-colorschemes'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Lint
Plug 'w0rp/ale'

" Misc
" Emojis
" Cheatsheet: https://www.webpagefx.com/tools/emoji-cheat-sheet/
Plug 'junegunn/vim-emoji'

" Auto pair
Plug 'jiangmiao/auto-pairs'

" Comments
Plug 'tyru/caw.vim'
" Plug 'kana/vim-operator-user' " to add motion support for caw.vim

" Surrounding helpers
Plug 'tpope/vim-surround'

" Status tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" buffer explorer
Plug 'jlanzarotta/bufexplorer'

" Search & Navigation
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'junegunn/vim-easy-align'

" LANGUAGE/USAGE SPECIFIC
" Comment the ones you don't require

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" Less
Plug 'groenewege/vim-less'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'zchee/deoplete-go', { 'do': 'make' }

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'othree/jspc.vim'

" Vue.js
Plug 'posva/vim-vue'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
call plug#end()
