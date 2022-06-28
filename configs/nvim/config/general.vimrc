" General settings
set autoread                                  " Automatically reload files when changed outside vim
set clipboard=unnamed                         " Copy selected text to the primary clipboard in LINUX
set background=dark                           " Adjust the dafault color groups for dark backgrounds
set signcolumn=auto:9                         " Resize to accomodate up to 9 signs
set nostartofline                             " Keep the cursor on the same column
set scrolloff=5                               " Always keep some lines visible on screen
set foldlevelstart=99                         " Never fold new buffers
set laststatus=2                              " Last window always with a status line
set nocursorline                              " Highlight screen line of the cursor
set mouse=a                                   " Enable mouse clicks in all modes
set autoindent                                " Copy indent from current line when starting a new line
set smartindent                               " Do smart autoinden when starting a new line
set completeopt=menuone,noinsert,noselect     " Configure completion
set diffopt=filler,vertical                   " Set diff mode to show filler lines and split vertically
set relativenumber                            " Show line numbers relative to cursor
set showcmd                                   " Show Vim keystrokes/commands
set wildmenu                                  " Set command-line completion to enhanced mode
set wildmode=full                             " Complete the next full match
set virtualedit=block                         " Set virtual edit in Visual block mode
set nowrap                                    " Disable line wrap
set expandtab smarttab                        " Use appropriate number of spaces to insert a tab
set tabstop=2 softtabstop=2 shiftwidth=2      " Set all tabs to 2 width spaces
set fileencoding=utf-8                        " Always set file encoding to UTF-8
set synmaxcol=1000                            " Max number of columns to highlight

" DEFAULTS

" Set list
set list
set listchars=tab:\|\ ,

" Enable lmap only
set noimd
set imi=1
set ims=-1

" Temporary files
set backupdir=/tmp//,.
set directory=/tmp//,.
if v:version >= 703
  set undodir=/tmp//,.
endif

" Vim Syntax
syntax on

" Enable color
colorscheme nord
