""""""""""""""""""""""""  
" Main section
""""""""""""""""""""""""  
set nocompatible
" plugin files for specific file types
filetype plugin on
" syntax highlighting
syntax on

let mapleader = ','

"  jk as escape 
inoremap jk <esc>
"  relative rows
set relativenumber
" with current also
set number
"  highlights search matches
set hlsearch
"  incremental or progressive search
set incsearch

"  da deluje statusna vrstica:
set laststatus=2

"  in da je obarvana:
if !has('gui_running')
  set t_Co=256
endif

" maps F2 to paste/nopaste switch
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" auto indent for yaml at 2 spaces
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

""""""""""""""""""""""""  
" custom  section
""""""""""""""""""""""""  
map <F5> :! ./build.sh

""""""""""""""""""""""""  
" vimwiki section
""""""""""""""""""""""""  
let g:vimwiki_list = [{'path': '/home/tomazk/development/personal/personal_wiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" vimWiki remaps forward, this is restoring it
nmap <Leader>wn <Plug>VimwikiNextLink


""""""""""""""""""""""""  
" Plug section
""""""""""""""""""""""""  
" installs Plug if it is not allready
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  "VimWiki
  Plug 'vimwiki/vimwiki'
  "FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "FZF vim
  Plug 'junegunn/fzf.vim'
  "Nerd tree
  Plug 'preservim/nerdtree'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Fugitive
  Plug 'tpope/vim-fugitive'
  " COC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
        \ 'coc-sh',
        \ 'coc-pyright',
        \ ]
  "Vimspector
  Plug 'puremourning/vimspector'
call plug#end()


""""""""""""""""""""""""  
" NERDTree section
""""""""""""""""""""""""  

" leader(,)-n opens NERDTree
nnoremap <Leader>n :NERDTreeFocus<CR>


""""""""""""""""""""""""  
" COC section
""""""""""""""""""""""""  
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

