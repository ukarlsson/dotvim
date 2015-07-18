set nocompatible
set showmatch
set matchtime=2
set wildmode=longest,list
set confirm
set vb
set t_vb=
set backupcopy=yes
set title
set equalalways
set showbreak=
set linebreak

set et
set sw=2
set sts=2
set tw=0

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk 

nnoremap <silent> <C-t> :CtrlP<CR>
nnoremap <silent> <C-a> :CtrlPBuffer<CR>

autocmd BufRead,BufNewFile *.hs		setlocal sts=2 sw=2 ai tw=78 expandtab formatoptions=crqn comments=:--,sr:{-,mb:-,ex:-}
autocmd BufRead,BufNewFile *.al		setlocal sts=1 sw=1 ai tw=78 expandtab formatoptions=crqn comments=:--,sr:{-,mb:-,ex:-}
autocmd BufRead,BufNewFile *.py		setlocal sts=4 sw=4 ai tw=0 et
autocmd BufRead,BufNewFile *.js		setlocal sts=2 sw=2 tw=0 et ai
autocmd BufRead,BufNewFile *.{html,ngt}	setlocal sts=2 sw=2 tw=0 et ai ft=html
autocmd BufRead,BufNewFile *.m		setlocal sts=4 sw=4 ai tw=0 et
autocmd BufRead,BufNewFile *.xml	setlocal sts=2 sw=2 ai tw=0 et

autocmd BufRead,BufNewFile *.java	setlocal cino=j1(0 sts=2 sw=2 et cindent

autocmd BufRead,BufNewFile *.{c,h,cc}	setlocal cindent cino=(0 sts=4 sw=4 et
autocmd BufRead,BufNewFile *.{pddl,lisp}	setlocal lisp ai sw=1 sts=1 et
autocmd BufRead,BufNewFile *.{tex}	setlocal spell
autocmd BufRead,BufNewFile *.yaml	setlocal noai
autocmd BufRead,BufNewFile *.{scala,sc}	setlocal filetype=scala
autocmd BufRead,BufNewFile *.{scala,sc}	setlocal filetype=scala

set noerrorbells

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

syntax on

set wildignore+=*.o,*.obj,.git,*.swp,*.pyc,*.class

set t_Co=256

set laststatus=2

" set relativenumber
" set number

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['java'] }
