"---------------
" Basic Settings
"---------------

" Use vim settings, rather than vi settings
set nocompatible

" Keep 50 lines of command line history
set history=300

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


"-----------------
" Display Settings
"-----------------

" Always show cursor position
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display incomplete commands
set showcmd

" Better command-line completion
set wildmenu

" Display line numbers on the left
set number

" Highlight matching braces
set showmatch

" Show insert/replace/visual mode
set showmode

" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
"

"--------------
" Edit Settings
"--------------

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Auto indention
set autoindent

" set tab behavior
set tabstop=4
set expandtab
set shiftwidth=4

" Wrap lines automatically at 80th column
set textwidth=80

" no extra space after '.' when joining lines
set nojoinspaces


"----------------
" Write  Settings
"----------------

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" encoding used when saving file
" set fileencoding=utf-8

set nobackup " do not keep the backup~ file


"-----------------
" Search  Settings
"-----------------

" Incremental searching
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight search results
set hlsearch


"-----------------------------
" File type specific  Settings
"-----------------------------

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on


"----------------
" Syntax Settings
"----------------

" Enable syntax highlighting
syntax enable

" Set syntax on and highlight search when terminal has color
if &t_Co > 2 || has('gui_running')
    syntax on
endif

" Dark background for console
" set background=dark

"syntax enable
"set background=dark
"colorscheme solarized


"syntax enable
"set background=light
"colorscheme solarized

"---------------
" Misc. Settings
"---------------

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+


"---------------------
" General Key Mappings
"---------------------

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F5 to sort selection or paragraph
vnoremap <F5> :sort i<CR>
nnoremap <F5> Vip:sort i<CR>

" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a

" press F12 to toggle showing the non-printable charactes
noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR>a

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
