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
	Plug 'Valloric/YouCompleteMe'
	Plug 'scrooloose/syntastic'
	Plug 'ervandew/supertab'
	Plug 'tmhedberg/SimpylFold'

" Add plugins to &runtimepath 
call plug#end()


" ------------------------------------------------------------------
" Misc settings
" ------------------------------------------------------------------

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
