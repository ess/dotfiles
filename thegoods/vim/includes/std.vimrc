" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set modelines=0

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq
filetype on
"filetype indent on
filetype plugin indent on

set ts=2
set expandtab
set autoindent
set shiftwidth=2
set foldmethod=indent
set foldnestmax=1
" I hate me some backup files.
set nobackup
set nowritebackup
