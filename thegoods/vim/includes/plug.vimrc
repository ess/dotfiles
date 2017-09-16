" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Plug 'Shougo/neocomplete.vim'
Plug 'godoctor/godoctor.vim'
Plug 'dleonard0/pony-vim-syntax'

" Initialize plugin system
call plug#end()
