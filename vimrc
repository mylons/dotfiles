" .vimrc - lyonsmr
filetype plugin indent on
filetype indent on
autocmd Filetype python set complete+=k~/.vim/syntax/python.vim isk+=.,(

syntax on
set et
" set background=dark
set bs=2
set tabstop=8
set expandtab
""set noexpandtab
set smarttab
set shiftwidth=4
set shiftround
set softtabstop=4
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
"set spell spelllang=en_us
"set spellfile=~/.spell.utf8.add

"hi Normal guifg=gray guibg=black
set guifont=Lucida_Console:h14:cDEFAULT

" set foldmethod=indent
" set foldlevel=1000

set list listchars=tab:>-,trail:.,extends:>

" Only format comments
set formatoptions-=t
set textwidth=78
set backspace=indent,eol,start


" Reprocess xml files
"au FileType xml>-------exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
"au FileType jnl exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro

" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:

autocmd FileType html,css set noexpandtab tabstop=2

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 6 chars to be sure that all indents are tabs
autocmd FileType make set noexpandtab shiftwidth=6

" python -- PEP8 suggests spaces, not tabs, and width of 4
autocmd FileType python set expandtab tabstop=4

set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
colorscheme desert256

" code folding - save view
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

"" Mintty custom cursor
"let &t_ti="\e[2 q\e[?7727h"
"let &t_SI="\e[6 q"
"let &t_EI="\e[2 q"
"let &t_te="\e[0 q\e[?7727l"
"noremap <Esc>O[ <Esc>
"noremap! <Esc>O[ <Esc>

" Tab completiion
set wildmenu
set wildmode=list:longest,full

