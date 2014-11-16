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

let mapleader = "\<Space>"

" Highlight column 79
highlight ColorColumn ctermbg=darkgrey
set colorcolumn=79

" Source the .vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Limit the width of text to 72 characters in Mutt
au BufRead /tmp/mutt-* set tw=72

nnoremap <Leader>w :w<CR>                                       " Use 'Space w' to write
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR> " Insert an empty line below...
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR> " ...and above
nnoremap <Leader>h :vert bo help<CR>                            " Open help in a vertical split
nnoremap <silent><F2> :set relativenumber!<CR>                  " Toggle relative line numbers

" Copy to and paste from the system clipboard with 'Space y' and 'Space d'
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Toggle syntax highlighting
:map <silent><F3> :if exists("g:syntax_on") <Bar>
    \ syntax off <Bar>
    \ else <Bar>
    \ syntax enable <Bar>
    \ endif <CR>

" VimWiki
let g:vimwiki_list = [{'path': '~/data/docs/vimwiki/main/', 'path_html': '~/data/docs/vimwiki/main_html/'}]
