" General Vim Setup
" Python 2/3 versions - HACK for the cases where deoplete won't load with the host
" for whatever reason. No reason to uncomment otherwise
" let g:python_host_prog="$HOME/.pyenv/versions/neovim2/bin/python"
" let g:python3_host_prog="$HOME/.pyenv/versions/neovim3/bin/python"

" DEFAULTS
" Autoread when file has been changed
set autoread
set background=dark

" Fold level on new buffers
set foldlevelstart=99

" Default to PRIMARY clipboard in LINUX
" if you want to use CLIPBOARD by default set to unnamedplus
set clipboard=unnamed

" Highlights current line in every window
set nocursorline

" keep the cursor on the same column
set nostartofline

" Show status line
set laststatus=2

" Keep some lines for context when scrolling
set scrolloff=5

" Set list
set list
set listchars=tab:\|\ ,

" Use mouse
set mouse=a

" Indent
set autoindent
set smartindent

" Prevent scan on included files
" set complete-=i

" Setup complete
set completeopt=menuone,noinsert,noselect,preview

" Show diff in a vertical line
set diffopt=filler,vertical

" Show line numbers
set relativenumber

" Show Vim keystrokes/commands
set showcmd

" Command line completion
set wildmenu
set wildmode=full

" Set all tabs to 2 width spaces
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab smarttab

" Always utf8
set termencoding=utf-8 fileencoding=utf-8

set ttyfast

" Turn off visualbell, because it's annoying
" set novisualbell
" set vb t_vb=

" Wildcard of files to maybe ignore, this might need a rethink
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,/vendor/*,*/\.git/*

" Set virtual edit
set virtualedit=block

" Line wrap
set nowrap

" Temporary files
set backupdir=/tmp//,.
set directory=/tmp//,.
if v:version >= 703
  set undodir=/tmp//,.
endif

" Vim Syntax
syntax on

" Maximum number of column highlight
set synmaxcol=1000

" Enable lmap only
set noimd
set imi=1
set ims=-1

" MISC

" Detect .md as markdown
autocmd BufNewFile,BufReadPost *md set filetype=markdown

" Stop highlighting underscores in Markdown, seriously, stop it
autocmd BufNewFile,BufRead,BufEnter *.md,*.markdown :syntax match markdownIgnore "_"

" Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Set starting colorscheme
colorscheme cobalt2
