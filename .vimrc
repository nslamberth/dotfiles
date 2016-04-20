set nocompatible
filetype plugin indent on
syntax on
set background=dark
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

let mapleader = ","
nnoremap Q <nop>
nnoremap <Space> :
vnoremap <Space> :
vnoremap . :normal .<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-J> o<Cr><Esc>k
nnoremap <S-Enter> O<Esc>
nnoremap <c-p> :bp<CR>
nnoremap <c-n> :bn<CR>
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
nnoremap <C-u> <C-e>

set ignorecase
set smartcase
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set number
set hidden
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set mouse=a

if $TERM == 'cygwin'
    set term=pcansi
    colorscheme elflord
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
    nohlsearch
else
    colorscheme monokai
endif

augroup elm
    autocmd!
    autocmd Filetype elm setlocal shiftwidth=4 softtabstop=4 tabstop=4
    autocmd BufWrite *.elm setlocal filetype=elm
augroup END
