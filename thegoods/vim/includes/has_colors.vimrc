" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  colorscheme ego
  au BufRead,BufNewFile *.json set filetype=json
  set hlsearch
endif

