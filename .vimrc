syntax on
filetype plugin indent on
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

let mapleader = ","
inoremap jk <ESC>
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-J> o<Esc>
nnoremap <S-Enter> O<Esc>
nnoremap <Space> :
nnoremap <c-p> :bp<CR>
nnoremap <c-n> :bn<CR>
vnoremap . :norm.<CR>

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
set background=dark
colorscheme monokai
