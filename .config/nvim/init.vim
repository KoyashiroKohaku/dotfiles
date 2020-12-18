" dein
source $XDG_CONFIG_HOME/nvim/dein.rc.vim

"vimrc
source $HOME/.vimrc

" viminfo
set viminfo&
set viminfo+=n"$XDG_DATA_HOME/nvim/viminfo"

" colorscheme
try
  colorscheme onedark
  let g:lightline.colorscheme = 'onedark'
catch
endtry
