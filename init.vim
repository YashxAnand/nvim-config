"Install youcompleteme from ~/.vim/plugged folder running install.py.
"If YCM shows no support for python3.x+ then install pynvim using the
"command -> pip install --upgrade pynvim
"If "+y is not working install xclip
syntax on

set number
set shiftwidth=4
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'ycm-core/YouCompleteMe'
Plug 'ThePrimeagen/vim-be-good'
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'

call plug#end()

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

colorscheme spaceduck

let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner=2
let g:netrw_winsize=25
let g:ctrlp_use_caching=0

map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>







