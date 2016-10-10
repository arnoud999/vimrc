set nocompatible              " be iMproved, required
filetype off                  " required

" ------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------

" Add plugins
call plug#begin('~/.vim/plugged')  

	" Plugin for R
	Plug 'jalvesaq/Nvim-R'

	" Mimick tabs (see
	" http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/)
	Plug 'vim-airline/vim-airline'
	" Enable the list of buffers 
	let g:airline#extensions#tabline#enabled = 1
	" Show just the filename 
	let g:airline#extensions#tabline#fnamemod = ':t'

	" Remember session
	Plug 'tpope/vim-obsession'

	" Fuzzy find
	Plug 'ctrlpvim/ctrlp.vim'

	" File tree
	Plug 'scrooloose/nerdtree'

	" Markdown preview
	Plug 'shime/vim-livedown'

	" Python syntax linter
	Plug 'nvie/vim-flake8'
	Plug 'klen/python-mode'
	" Plug 'Valloric/YouCompleteMe'
	Plug 'scrooloose/syntastic'
	Plug 'ervandew/supertab'
	Plug 'tmhedberg/SimpylFold'

" Add plugins to &runtimepath 
call plug#end()

" ------------------------------------------------------------------
" Misc settings
" ------------------------------------------------------------------

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Misc options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

" New leader key
let mapleader = ","

" better searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase " Ignore case except when uppercase
set gdefault " No need for g at the end of a search
set incsearch " Highlight searches as you type
set showmatch
set hlsearch
" Delete highlight
nnoremap <leader><space> :noh<cr> 
" Use tab to move around bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"Allow ; instead of :
nnoremap ; :

" Autosave on loss of focus 
au FocusLost * :wa

" Allow mouse input
set mouse=a
"
" Default system clipboard
set clipboard=unnamed

" Show line numbers
set number

" Show docstring when folded
let g:SimpylFold_docstring_preview = 1

"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1

" Set path for R
" let R_path = "C:\\R\\R-3.3.1\\bin\\x64"
let R_vsplit = 1
let R_assign_map = "<M-->"
let R_show_args = 1
let R_args_in_stline = 1


" Keyboard shortcuts
" Easier shortcuts to navigate splits
nnoremap gh <C-W><C-H> 
nnoremap gj <C-W><C-J> 
nnoremap gk <C-W><C-K> 
nnoremap gl <C-W><C-L>

" Move to the next buffer 
nmap <C-L> :bnext<CR>
" Move to the previous buffer 
nmap <C-H> :bprevious<CR>
" Open a new tab
nmap <C-N> :enew<CR>
