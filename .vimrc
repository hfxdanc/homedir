syntax enable           " enable syntax processing
filetype indent on      " load filetype-specific indent files
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " number of spaces in tab
set expandtab           " tabs are spaces
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set nocompatible        " Don't try to be vi compatible
set modelines=0         " Security
set ruler               " Show file stats
set visualbell          " Blink cursor on error
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set ignorecase          " Use case insensitive search
set smartcase           " Except when using capital letters
set backup              " keep a backup file
set backupdir=~/.backup " custom backup directory
set history=100         " keep 100 lines of command line history
set lazyredraw          " don't update the display while executing macros
set showmode            " so you know what mode you are in
set scrolloff=10        " start scrolling 10 lines from the top/bottom
set nowrap              " no line wrapping
set hidden              " allow hidden buffers with unsaved changes

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

