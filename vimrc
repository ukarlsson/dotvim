set nocompatible
set showmatch
set matchtime=2
set wildmode=longest,list
set confirm
set vb
set t_vb=
set backupcopy=no
set title
set equalalways
set showbreak=
set linebreak

set spellfile=~/report-ng/spellfile.UTF-8.add

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

nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <silent> <C-a> :CommandTBuffer<CR>


"autocmd BufEnter *			lcd %:p:h

autocmd BufRead,BufNewFile *.hs		setlocal sts=2 sw=2 ai tw=78 expandtab formatoptions=crqn comments=:--,sr:{-,mb:-,ex:-}
autocmd BufRead,BufNewFile *.al		setlocal sts=1 sw=1 ai tw=78 expandtab formatoptions=crqn comments=:--,sr:{-,mb:-,ex:-}
autocmd BufRead,BufNewFile *.py		setlocal sts=4 sw=4 ai tw=0 et
autocmd BufRead,BufNewFile *.js		setlocal sts=2 sw=2 tw=0 et ai
autocmd BufRead,BufNewFile *.html	setlocal sts=2 sw=2 tw=0 et ai
autocmd BufRead,BufNewFile *.m		setlocal sts=4 sw=4 ai tw=0 et

autocmd BufRead,BufNewFile *.java	setlocal cino=j1(0 sts=4 sw=4 et cindent

autocmd BufRead,BufNewFile *.{c,h,cc}	setlocal cindent cino=(0 sts=4 sw=4 et
autocmd BufRead,BufNewFile *.{pddl,lisp}	setlocal lisp ai sw=1 sts=1 et
autocmd BufRead,BufNewFile *.{tex}	setlocal spell

"source ~/.unilatex.vim

set noerrorbells

autocmd GUIEnter * set vb t_vb=

"set guifont=MiscFixed\ Semi-Condensed\ 10
"hi Normal guibg=#ffff55
"hi SpellBad ctermbg=7
"
"

set guifont=Monospace\ 8

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

syntax on

set wildignore+=*.o,*.obj,.git *.swp *.pyc
