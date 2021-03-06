"""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""

if $VIMHOME == ''
  let $VIMHOME=fnamemodify(expand('<sfile>:p'), ':h')
endif

" Load Vundle.vim plugin and definitions
source $VIMHOME/bundle.vim

" Disable backups
set nobackup nowb noswapfile

" Allow backspacing over start of insert
" See http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace'
set backspace=2

" Enable persistent undo
" See http://amix.dk/blog/post/19548
set undodir=$VIMHOME/.undo
set undofile
set undolevels=1000
set undoreload=10000

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors, fonts, and aethetics
"""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight current line
set cursorline

let g:solarized_termtrans=1 " Enable color scheme transparency
colo solarized
set t_Co=256
if $BG == 'light'
  set bg=light
else
  set bg=dark
endif

let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tabs, and indentation
"""""""""""""""""""""""""""""""""""""""""""""""""

" Default indent settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Line numbering
set number

" Word wrap without breaking words
set formatoptions=1
set lbr

" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap

" Draw ruler
set colorcolumn=80

" Selectively strip trailing whitespace. See http://stackoverflow.com/a/6496995
fun! StripTrailingWhitespace()
  if &ft =~ 'gitcommit'
    return
  endif
  %s/\s\+$//e
endfun

" Delete trailing whitespace on save
autocmd BufWritePre * call StripTrailingWhitespace()

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""

" snipMate.vim
let g:snips_author = substitute(system('git config user.name'), '\n$', '', 'g')
let g:snips_email  = substitute(system('git config user.email'), '\n$', '', 'g')

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ginkgo'] = 'ginkgo,go'
let g:snipMate.scope_aliases['rspec'] = 'rspec,ruby'

" Command mappings
source $VIMHOME/mappings.vim
" Filetype settings
source $VIMHOME/ftsettings.vim

source $VIMHOME/projections.vim
