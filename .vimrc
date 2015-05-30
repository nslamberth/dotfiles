filetype plugin indent on
syntax on
set background=dark
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

inoremap jk <ESC>
let mapleader = ","
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-J> o<Esc>
nnoremap <S-Enter> O<Esc>
nnoremap <Space> :
nnoremap <c-p> :bp<CR>
nnoremap <c-n> :bn<CR>

set ignorecase
set smartcase
set backspace=indent,eol,start
set clipboard=unnamed
set number
set hidden
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set mouse=a
colorscheme monokai
