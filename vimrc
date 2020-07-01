"=======================================================================
"  Main settings
"=======================================================================

set ruler
set showmode
set hidden
syntax on

set nocompatible
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrolloff=999
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
"  Mappings
"=======================================================================
nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>

"=======================================================================
"  Filetypes
"=======================================================================
autocmd FileType python setlocal expandtab
