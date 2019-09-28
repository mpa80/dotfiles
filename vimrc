"=======================================================================
"  Pathogen and plugins
"=======================================================================

execute pathogen#infect()
call pathogen#helptags()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim


"=======================================================================
"  Main settings
"=======================================================================

color dracula
set noruler
set noshowmode
set hidden
syntax on

set expandtab                      " tab to spaces
set shiftwidth=2                   " number of spaces when shift indenting
set softtabstop=2                  " number of spaces in tab when editing
set tabstop=2                      " number of visual spaces per tab
set omnifunc=syntaxcomplete#Complete
set scrolloff=999
set smartindent
set number                         " show line numbers
set cursorline                     " highlight current line
set showmatch                      " highlight matching [{()}]
set incsearch                      " search as characters are entered
set hlsearch                       " highlight matches
set smartcase
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* 
let g:ctrlp_show_hidden=1
set noswapfile
autocmd FileType javascript JsPreTmpl html
let g:jsx_ext_required = 0
" autoquit if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" source .vimrc after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
" write as root
cmap w!! w !sudo tee % >/dev/null


"=======================================================================
"  Airline
"=======================================================================

let g:airline_theme = 'dracula'
let g:airline#extensions#branch#enabled = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = '' 
set laststatus=2 " for airline


"=======================================================================
"  Mappings
"=======================================================================

" ctrl-p plugin shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Nerd Tree toggling
map <C-n> :NERDTreeToggle<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" switch to left / right split (mostly for Nerd Tree)
map <C-h> <C-W>h
map <C-l> <C-W>l
