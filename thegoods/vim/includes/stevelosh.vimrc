" set undofile

let mapleader = ","

" Searching

" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Visual Cues

set list
if !has('nvim')
  set listchars=eol:¬
endif

" Getting Around

nnoremap <up> gk
nnoremap <down> gj
nnoremap j gj
nnoremap k gk

" Fuck the Help key

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Useful remaps

""" Strip all trailing whitespace in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

""" Ack!

nnoremap <leader>a :Ack

""" Escape from insert mode is dynomite

inoremap jj <ESC>
