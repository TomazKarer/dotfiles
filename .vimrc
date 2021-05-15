"  to potrebje vimwiki
set nocompatible
filetype plugin on
syntax on

let mapleader = ','

let g:vimwiki_list = [{'path': '/home/tomazk/Development/personal_wiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"  jk kot escape 
inoremap jk <esc>

"  prikazuje relativne številke vrstic
set relativenumber
"  označi rezultate iskanja
set hlsearch
"  inkrementalno iskanje (vnaprej)
set incsearch

"  da deluje statusna vrstica:
set laststatus=2

"  in da je obarvana:
if !has('gui_running')
  set t_Co=256
endif
