if exists('g:loaded_fugitive') && has('gui_running')  
  set statusline=%{fugitive#statusline()}\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
end
