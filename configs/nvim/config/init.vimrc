" ============= Vim-Plug ============== "{{{

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

"}}}

" ================= Looks and GUI ================== "{{{

Plug 'arcticicestudio/nord-vim'                         " Theme
Plug 'vim-airline/vim-airline'                          " Status line
Plug 'vim-airline/vim-airline-themes'                   " Status line themes
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  " Sidebar Navigation
Plug 'Xuyuanp/nerdtree-git-plugin'                      " Git status flags in NERDTree
Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'jlanzarotta/bufexplorer'                          " enhanced buffer navigation
"}}}

" ================= Functionalities ================== "{{{

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
Plug 'iamcco/markdown-preview.nvim', |                  " Markdown
     / { 'do': { -> mkdp#util#install() }, |
     / 'for': ['markdown', 'vim-plug']}
"}}}

" ================== Language Specifics ===================== "{{{

" Plug 'martinda/Jenkinsfile-vim-syntax'                  " Jenkinsfile
" Plug 'elzr/vim-json', { 'for': 'json' }                 " json
" Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' } " Docker
" Plug 'pangloss/vim-javascript'                          " JavaScript
" Plug 'posva/vim-vue'                                    " Vue.js
" Plug 'HerringtonDarkholme/yats.vim'                     " Typescript
" Plug 'hashivim/vim-terraform'                           " Terraform
" Plug 'StanAngeloff/php.vim'                             " PHP
" Plug 'stephpy/vim-php-cs-fixer'                         " PHP Coding Standards Fixer

call plug#end()
"}}}
