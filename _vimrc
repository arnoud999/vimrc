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

" Add plugins to &runtimepath 
call plug#end()


" ------------------------------------------------------------------
" Misc settings
" ------------------------------------------------------------------

" Default system clipboard
set clipboard=unnamed

" Show line numbers
set number

" Set path for R
let R_path = "C:\\R\\R-3.3.1\\bin\\x64"

" Keyboard shortcuts
" Easier shortcuts to navigate splits
" nnoremap <C-J> <C-W><C-J> 
" nnoremap <C-K> <C-W><C-K> 
" nnoremap <C-L> <C-W><C-L> 
" nnoremap <C-H> <C-W><C-H>

" Move to the next buffer 
nmap <C-L> :bnext<CR>
" Move to the previous buffer 
nmap <C-H> :bprevious<CR>
" Open a new tab
nmap <C-N> :enew<CR>
