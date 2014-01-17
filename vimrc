" .vimrc - lyonsmr
filetype plugin indent on
filetype indent on
autocmd Filetype python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

syntax on
set et
" set background=dark
set smartindent
set bs=2
set tabstop=2
set expandtab
""set noexpandtab
set smarttab
set shiftwidth=4
set shiftround
set softtabstop=2
set ruler
set nowrap
set nohlsearch
set showmode
set shortmess+=r
set showcmd
set noautoindent

" set mouse=a
set matchpairs+=<:>

set cinoptions="f.5s{.5s"

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Toggle line wrap
map <F3> :set nowrap! <CR>

" Search case insensitive
set smartcase
set ignorecase
set incsearch

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

let loaded_matchparen=1

set guifont=Lucida_Console:h14:cDEFAULT


set list listchars=tab:>-,trail:.,extends:>

" Only format comments
set formatoptions-=t
set textwidth=78
set backspace=indent,eol,start


set t_Co=256
colorscheme desert256


