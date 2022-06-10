" init.vimrc - Collection of all plugins
call plug#begin('~/.local/share/nvim/plugged')

" GENERAL IMPROVEMENTS

" Helpers
Plug 'christianrondeau/vim-base64'

" File context type
Plug 'Shougo/context_filetype.vim'

" Autocompletion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Theme
Plug 'arcticicestudio/nord-vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" LANGUAGE/USAGE SPECIFIC
" Comment the ones you don't require

" editorconfig
Plug 'gpanders/editorconfig.nvim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Asciidoc
Plug 'habamax/vim-asciidoctor'

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }

" Docker
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" JavaScript
Plug 'pangloss/vim-javascript'

" Vue.js
Plug 'posva/vim-vue'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

call plug#end()
