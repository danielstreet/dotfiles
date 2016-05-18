"""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

if $VIMHOME == ''
  let $VIMHOME=fnamemodify(expand('<sfile>:p'), ':h')
endif

" Initialize Vundle
call plug#begin("$VIMHOME/plugged")

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""

" Color schemes
Plug 'altercation/vim-colors-solarized'

" Languages & syntaxes
Plug 'Keithbsmiley/rspec.vim'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'digitaltoad/vim-jade'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'hashivim/vim-terraform'
Plug 'honza/dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'pangloss/vim-javascript'
Plug 'rodjek/vim-puppet'
Plug 'rust-lang/rust.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'yaml.vim'
Plug 'yosssi/vim-ace'

" Plugins
Plug 'GutenYe/gem.vim'
Plug 'Raimondi/delimitMate'
Plug 'benmills/vim-golang-alternate'
Plug 'gevans/vim-ginkgo'
Plug 'godlygeek/tabular'
Plug 'jgdavey/tslime.vim'
Plug 'moll/vim-bbye'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'tomtom/tlib_vim'

call plug#end()
