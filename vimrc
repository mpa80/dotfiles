"""""""""""""""""
""   .vimrc
"""""""""""""""""

set nocompatible
execute pathogen#infect()
execute pathogen#helptags()
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

set scrolloff=999
set nowrap
set tabstop=4 shiftwidth=4
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set number
"set norelativenumber
set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell
set noerrorbells

set nobackup
set noswapfile

let mapleader = ","

" Highlight column 79
highlight ColorColumn ctermbg=darkgrey
set colorcolumn=79

" Source the .vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Limit the width of text to 72 characters in Mutt
au BufRead /tmp/mutt-* set tw=72

" Insert blank line
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Open help in a vertical split
nnoremap <F1> :vert bo help

" Toggle syntax highlighting
:map <silent><F3> :if exists("g:syntax_on") <Bar>
    \ syntax off <Bar>
    \ else <Bar>
    \ syntax enable <Bar>
    \ endif <CR>

" Toggle relative line numbers
nnoremap <silent><F2> :set relativenumber!<CR>

" VimWiki
let g:vimwiki_list = [{'path': '~/data/docs/vimwiki/main/', 'path_html': '~/data/docs/vimwiki/main_html/'}]
