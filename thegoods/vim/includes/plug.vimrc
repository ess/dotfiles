" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Tools

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'rgarver/Kwbd.vim'
Plug 'ess/minibufexpl.vim', { 'branch': 'main' }
"Plug 'weynhamz/vim-plugin-minibufexpl'
"Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline'
"Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-vividchalk'
Plug 'NLKNguyen/papercolor-theme'
"if has('nvim')
    Plug 'github/copilot.vim', { 'branch': 'main'}
"endif

" Language Support

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'godoctor/godoctor.vim'
Plug 'dleonard0/pony-vim-syntax'
Plug 'leafo/moonscript-vim'
Plug 'vim-crystal/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'slim-template/vim-slim'
Plug 'fasterthanlime/ooc.vim'
Plug 'elzr/vim-json'
Plug 'lluchs/vim-wren'
Plug 'ziglang/zig.vim'
Plug 'ollykel/v-vim'
Plug 'hashivim/vim-terraform'

" Initialize plugin system
call plug#end()
