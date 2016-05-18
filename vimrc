if $VIMHOME == ''
  let $VIMHOME=fnamemodify(expand('<sfile>:p'), ':h')."/.config/nvim"
endif

source $VIMHOME/init.vim
