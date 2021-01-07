"=======================================================================
"  Main settings
"=======================================================================

set ruler
set showmode
set hidden
syntax on
colorscheme elflord

set nocompatible
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrolloff=2
set smartindent
set nonumber
set cursorline
set showmatch
set incsearch
set hlsearch
set smartcase
set linebreak
set nobackup
set noswapfile
set noundofile

"=======================================================================
" Move lines up and down
"=======================================================================
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"=======================================================================
"  Mappings
"=======================================================================
inoremap kj <ESC>
nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>

"=======================================================================
" VimWiki
"=======================================================================
let g:vimwiki_list = [{'path': '~/data/docs/prv/wiki/'}]

"=======================================================================
"  Filetypes
"=======================================================================
autocmd FileType python setlocal expandtab
