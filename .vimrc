scriptencoding utf-8
set encoding=utf-8

" aesthetics
set cursorline "highlights current line cursor is on
set mouse=a " works in xterm. not OS X Terminal
set number
set showmatch " eg matching braces
set title
set showcmd
" syntax on, then filetype off and on to get force reloading of filetype.
" http://stackoverflow.com/questions/5602767/why-is-vim-not-detecting-my-coffescript-filetype
syntax on
filetype off
filetype on

set wildmenu " when pressing tab, we get graphical autocomplete of matches inside Command Line mode

" spaces / tabs
set autoindent
set expandtab
set nojoinspaces " 1 space between joined lines instead of 2
" use gJ in normal mode to join with no spaces at all
set shiftwidth=4
set softtabstop=4

" strip trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e

set list
" note that we are not showing EOL
set listchars=trail:·,precedes:«,extends:»,tab:▸\

" editing
set backspace=indent,eol,start
" yanking and pasting are shared with mac os x clipboard. NOT tested on *nix
set clipboard=unnamed

" searching
" move the cursor incrementally as we find matches, ignore case
" (except when we explicitly have a capitalized char)
" (We can force case sensitivity by appending \C to the end. eg: /dog\C will
"   search for only lower case 'dog'
set incsearch
set ignorecase
set smartcase

" map '\q' to kill highlighted seach. '\q' isn't used for anything else
set hlsearch
nmap \q :nohlsearch<CR>

"Powerline plugin
set laststatus=2

syntax enable


"Tab colors. Need to be below themeatic otherwise gets overwritten.
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

"hi TabLine      guifg=#333 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none
"hi TabLineSel   guifg=#666 guibg=#222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
"hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none
