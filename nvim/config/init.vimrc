" init.vimrc - Collection of all plugins
call plug#begin('~/.local/share/nvim/plugged')

" GENERAL IMPROVEMENTS

" Helpers
Plug 'christianrondeau/vim-base64'

" File context type
Plug 'Shougo/context_filetype.vim'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'

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

" Snippets
Plug 'SirVer/ultisnips'

" Surrounding helpers
Plug 'tpope/vim-surround'

" Status tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Buffer explorer
Plug 'jlanzarotta/bufexplorer'

" Search & Navigation
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" LANGUAGE/USAGE SPECIFIC
" Comment the ones you don't require

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" Less
Plug 'groenewege/vim-less'

" Stylus
Plug 'iloginow/vim-stylus'

" Docker
Plug 'ekalinin/Dockerfile.vim'
Plug 'deoplete-plugins/deoplete-docker', { 'do': 'make' }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" JavaScript
Plug 'pangloss/vim-javascript'

" Vue.js
Plug 'posva/vim-vue'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {
      \ 'for': ['typescript', 'tsx'],
      \ 'do': 'bash install.sh'
      \ }
call plug#end()
