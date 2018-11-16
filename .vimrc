" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et tw=0 foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

" Basics {
    set nocompatible " be iMproved, required
    filetype on      " required
" }

" Plugins {

    call plug#begin('~/.vim/plugged')

    " Color schemes
    Plug 'flazz/vim-colorschemes'

    " Markdown support
    Plug 'godlygeek/tabular'        " Needed for vim-markdown
    Plug 'plasticboy/vim-markdown'  " Syntax highlighting, matching rules, mappings
    Plug 'esalter-va/vim-checklist' " Add checklists
    let g:vim_markdown_math = 1
    " Plug 'iamcco/mathjax-support-for-mkdp'
    " Plug 'iamcco/markdown-preview.vim'
    " let g:mkdp_auto_close = 1
    Plug 'shime/vim-livedown'
    " map <C-S-m> :LivedownPreview<CR>
    let g:livedown_open = 1    " should the browser window pop-up upon previewing
    let g:livedown_autorun = 0
    let g:livedown_port = 1337 " the port on which Livedown server will run

    " Markdown table mode
    " Plug 'dhruvasagar/vim-table-mode'
    " let g:table_mode_corner='|'

    " R support
    Plug 'jalvesaq/Nvim-R'
    let R_args_in_stline = 1
    inoremap <C-Space> <C-x><C-o>
    let R_assign = 2

    " Mimick tabs (see
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
    let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

    " Remember session
    Plug 'tpope/vim-obsession'

    " Fuzzy find
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    nnoremap <leader>b :b
    nnoremap <leader>f :Files<CR>
    nnoremap <leader>t :Tags<CR>

    " Surround
    Plug 'machakann/vim-sandwich'

    "Add commenting with gc
    Plug 'tpope/vim-commentary'

    " Highlight on yank
    Plug 'machakann/vim-highlightedyank'
    map y <Plug>(highlightedyank)
    let g:highlightedyank_highlight_duration = 300

    " Distraction free (zen) mode
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    let g:goyo_height = '90%'

    " Outline
    " Plug 'majutsushi/tagbar'
    " " Add support for markdown files in tagbar.
    " let g:tagbar_type_markdown = {
    "             / 'ctagstype' : 'markdown',
    "             / 'kinds' : [
    "                 / 'h:headings',
    "                 / 'l:links',
    "                 / 'i:images',
    "                 / 't:todo'
    "             / ],
    "     / "sort" : 0
    " / }

    " Auto-save
    " Plug 'vim-scripts/vim-auto-save'
    " let g:auto_save = 0         " enable AutoSave on Vim startup
    " let g:auto_save_silent = 1  " do not display the auto-save notification
    " set updatetime=2000

    " Syntax for TOML
    Plug 'cespare/vim-toml'

    " Change gui font size
    Plug 'thinca/vim-fontzoom'
    map <leader>0 :Fontzoom!<cr>
    map - <Plug>(fontzoom-smaller)
    map + <Plug>(fontzoom-larger)
    nnoremap <C-0> :Fontzoom 11<CR>

    " Find in files
    Plug 'mileszs/ack.vim'

    " Remember folds
    Plug 'vim-scripts/restore_view.vim'
    set viewoptions=cursor,folds,slash,unix

    " Check grammar with LanguageTool
    Plug 'dpelle/vim-LanguageTool'
    let g:languagetool_jar='C:/Users/a9/.vim/LanguageTool/languagetool-commandline.jar'

    " LaTeX support
    Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_general_viewer = 'SumatraPDF'
    let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'
    let g:vimtex_view_general_options_latexmk='-reuse-instance'

    " Auto reload changes
    Plug 'djoshea/vim-autoread'

    " MPLUS syntax
    Plug 'sakura2014/mplusVim'    

    " Highlight patterns for EX commands
    Plug 'osyo-manga/vim-over'

    " Fullscreen
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-shell'
    let g:shell_fullscreen_items=""          " Don't hide the tabline
    let g:shell_fullscreen_always_on_top = 0 " Disable always on top
    let g:shell_fullscreen_message = 0       " Don't show a message when going fullscreen

    " No grey bars
    " Plug 'dreadnaut/vim-bargreybars'

    " Restart Vim
    Plug 'vim-scripts/restart.vim'

    " SPSS Syntax highlighting
    Plug 'vim-scripts/spss-syntax-highlighting-file'

    " RMarkdown support
    " Plug 'vim-pandoc/vim-pandoc'
    " Plug 'vim-pandoc/vim-pandoc-syntax'
    " Plug 'vim-pandoc/vim-rmarkdown'
    
    " Automatically capitalize SQL keywords
    Plug 'alcesleo/vim-uppercase-sql'

    " SQL Utilities
    Plug 'vim-scripts/SQLUtilities'
    Plug 'vim-scripts/Align'

    " Better SQL syntax
    Plug 'shmup/vim-sql-syntax'

    " Interacting with databases
    Plug 'tpope/vim-dadbod'

    " Easy Align
    Plug 'junegunn/vim-easy-align'

    call plug#end()

" }

" Vim UI {

    " Color scheme
    syntax enable
    set background=dark
    colorscheme gruvbox
    " AirlineTheme tomorrow
    let g:airline_theme="tomorrow"
    function! ChangeColorScheme()
        if &l:background == "light"
            " colorscheme Tomorrow-Night
            set background=dark
        else
            " colorscheme Tomorrow
            set background=light
            " AirlineTheme solarized
        endif
    endfunction
    noremap <F12> :call ChangeColorScheme()<CR>

    " Font
    if has('gui_running')
        set guifont=Source_Code_Pro:h11
    endif

    " Hide gui
    set guioptions-=m " Hide menubar
    set guioptions-=T " Hide toolbar
    set guioptions-=r " Hide right scrollbar
    set guioptions-=R " Hide right scrollbar even in vsp
    set guioptions-=l " Hide right scrollbar
    set guioptions-=L " Hide right scrollbar even in vsp

    " Allow switching unsaved buffers
    set hidden

    " Set folding
    " set foldlevelstart=20

    " Show more autocomplete options for ex
    set wildmenu
    set wildmode=full

    " Don't conceal links and formatting in markdown
    set conceallevel=0

    " Options for splits
    set splitbelow " Split new window below
    set splitright " Split new window right

    " Font
    " Guifont Consolas:h12
    " if has("gui_running")
    "   if has("gui_gtk3")
    "     " Guifont Source/ Code/ Pro:h10
    "     " Guifont Source/ Code/ Pro:h10
    "   elseif has("gui_win32")
    "     " set guifont=Source/ Code/ Pro:h9:cANSI
    "     " Guifont Source/ Code/ Pro:h10
    "     " set guifont=Roboto/ mono:h9:cANSI
    "   endif
    " endif

    " Hide toolbar and menu bar
"    set guioptions-=T  "remove toolbar
"    set guioptions-=m  "remove menu bar
"    set guioptions-=r  "remove right-hand scroll bar
"    set guioptions-=R  "remove right-hand scroll bar
"    set guioptions-=l  "remove left-hand scroll bar
"    set guioptions-=L  "remove left-hand scroll bar

    " Automatically equalize splits when Vim is resized
    autocmd VimResized * wincmd =

    " Allow mouse input
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing

    " Line numbers
    set number                  " Show line numbers
    set relativenumber          " Show relative line numbers

    " Spelling
    set nospell                 " Turn off spell check

    " better searching/moving
    nnoremap / //v
    vnoremap / //v
    set ignorecase
    set smartcase  " Ignore case except when uppercase
    set gdefault   " No need for g at the end of a search
    set incsearch  " Highlight searches as you type
    " set inccommand=split " Show substitution as you type
    set showmatch
    set hlsearch
    " Delete highlight
    nnoremap <space><space> :noh<cr>
    " Use tab to move around bracket pairs
    nnoremap <tab> %
    vnoremap <tab> %

    " Prettier visible white space (with :set list)
    " if &listchars ==# 'eol:$'
    "   set listchars=tab:>/ ,trail:-,extends:>,precedes:<,nbsp:+
    " endif

    " Handle long lines correctly
    set wrap
    set breakindent "Wrap with indentation
    set textwidth=0
    set formatoptions=qrn1
    set linebreak

    " Disable beeping and visualbell
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=

    " Automatically reread a file when changed by an external editor
    set autoread

    " Autosave on exiting insert mode or changing text
    let blacklist = ['tex', 'latex'] " Exclude tex files
    augroup autoSaveAndRead
        autocmd!
        autocmd TextChanged,InsertLeave,FocusLost * if index(blacklist, &ft) < 0 |silent! wall
        autocmd CursorHold * if index(blacklist, &ft) < 0 |silent! checktime
    augroup END

    " Display part of the last line instead of hiding it completely
    set display+=lastline

    " Backup, Swap and Undo
    if has('persistent_undo')
        silent call system('mkdir -p ~/.vim/tmp/undo')
        set undofile
        set undodir=~/.vim/tmp/undo//
    endif
    if has("win32")
        set directory=$HOME/vimfiles/swap,$TEMP
        set backupdir=$HOME/vimfiles/backup,$TEMP
        set undodir=$HOME/vimfiles/undo,$TEMP
    else
        set directory=~/.vim/swap,/tmp
        set backupdir=~/.vim/backup,/tmp
        set undodir=~/.vim/undo,/tmp
    endif

    " The Silver Searcher
    if executable('ag')
      " Use ag over grep
      set grepprg=ag/ --nogroup/ --nocolor
    endif

" }

" Formatting {

    set autoindent              " Indent at the same level of the previous line
    set shiftwidth=4            " Use indents of 4 spaces
    set encoding=utf-8          " Set encoding default to UTF-8
    set fileencoding=utf-8      " Set file encoding default to UTF-8
    set expandtab               " Tabs are spaces, not tabs
    set tabstop=4               " An indentation every four columns
    set softtabstop=4           " Let backspace delete indent
    set nojoinspaces            " Prevents inserting two spaces after punctuation on a join (J)
    set splitright              " Puts new vsplit windows to the right of the current
    set splitbelow              " Puts new split windows to the bottom of the current
    set scrolloff=3             " Show at least 3 lines above and below cursor

    " Don't increment numbers in octal notation
    :set nrformats-=octal
" }

" Key bindings {

    " Set leader key to ,
    let mapleader = ' '

    " Remap Ctrl-C to Esc for visual block mode
    inoremap <C-c> <Esc>
    let g:ftplugin_sql_omni_key = '<C-j>' " Change the default keymapping for sql files

    " Easier shortcuts to navigate splits
    nnoremap gh <C-W><C-H>
    nnoremap gj <C-W><C-J>
    nnoremap gk <C-W><C-K>
    nnoremap gl <C-W><C-L>
    nnoremap <C-h> <C-W><C-H>
    nnoremap <C-l> <C-W><C-L>
    nnoremap <C-j> <C-W><C-J>
    nnoremap <C-k> <C-W><C-K>

    " Switch between buffers
    nnoremap <tab> :bnext<CR>
    nnoremap <S-tab> :bprevious<CR>
    nnoremap ]b :bnext<CR>
    nnoremap [b :bprevious<CR>
    nnoremap <C-n> :enew<CR>

    " Toggle full screen (Neovim)
    " function! ToggleFullScreen()
    "   if g:GuiWindowFullScreen
    "       call GuiWindowFullScreen(0)
    "   else
    "       call GuiWindowFullScreen(1)
    "   endif
    " endfunction
    " map <F11> <Esc>:call ToggleFullScreen()<CR>

    " Toggle distraction-free mode
    map <S-F11> :Goyo<CR>

    " Toggle comment
    nmap <C-S-c> <leader>c<Space>
    vmap <C-S-c> <leader>c<Space>

    " Use system clipboard
    vmap <Leader>y "+y
    nmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <Leader>p "+p
    nmap <Leader>P "+P
    vmap <Leader>p "+p
    vmap <Leader>P "+P

    " Yank to end of line
    nnoremap Y y$

    " Checklist
    nnoremap <leader>x :ChecklistToggleCheckbox<CR>
    vnoremap <leader>x :ChecklistToggleCheckbox<CR>

    " Write changes
    nnoremap <leader>w :w<CR>

    " Map Ctrl-Backspace to delete the previous word in insert mode.
    imap <C-BS> <C-W>
    set backspace=indent,eol,start

    " Remove all trailing white space by pressing F5
    function! StripTrailingWhitespace()
      if !&binary && &filetype != 'diff'
        normal mz
        normal Hmy
        %s//s/+$//e
        normal 'yz<CR>
        normal `z
      endif
    endfunction
    command! DeleteWhiteSpace :call StripTrailingWhitespace()<CR>

    " Open command line here
    " command! CmdHere :!start cmd /k cd %:p:h
    command! CmdHere :!start powershell -noexit -command "cd '%:p:h'"
    noremap <F9> :CmdHere<CR>

    " CD to current file's directory
    command! CdHere :cd %:p:h

    " Open the current file in browser
    command! Browser :silent ! start chrome "file://%:p"

    " Open bank database in MySQL
    command! Bank :silent vert terminal mysql -u arnoud999 -p bank

    " Execute the current file
    command! Execute :silent !start "%:p"

    " Table format
    nnoremap <leader>tf :TableFormat<CR>

    " Table of contents for Markdown files
    nnoremap <leader>tc :Toc<CR>

    " Easy Align
   " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

    " SQL Utilities
    let g:sqlutil_load_default_maps = 0 " Disable default mappings
    let g:sqlutil_align_where = 0 " Disable aligning operators
    vmap <leader>sf        :SQLUFormatter<CR>
    nmap <leader>sf        :'{+1,'}-1SQLUFormatter<CR>
    nmap <leader>sd yiwwDESC "0;<CR>W
    " nmap <leader>sf        vip:'<,'>SQLUFormatter<CR>
    " vmap <leader>sf        <Plug>SQLU_Formatter<CR>
    " nmap <leader>scl       <Plug>SQLU_CreateColumnList<CR>
    " nmap <leader>scd       <Plug>SQLU_GetColumnDef<CR>
    " nmap <leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
    " nmap <leader>scp       <Plug>SQLU_CreateProcedure<CR>
    
    " Send to terminal
    nmap <C-Enter> yipw"0W)
    vmap <C-Enter> yw"0W)
    " nmap <C-S-r> o76i-a */0R/* lR
    
    " Markdown to do list
    cab TD s/^/s*/zs-/- [ ]/g

"     function! ListToTodo()
"         substitute(a, '^/s*/zs-', '- [ ]', 'e' )
"     endfunction

"     command! -range Todolist <line1>,<line2>call ListToTodo()
    " command! -range =% Todolist <line1>,<line2>s/^/s*/zs-/- [ ]/ | norm! ``
    " command! -range=% Todolist <line1>,<line2>ListToTodo()
    " command -range=% RemoveTrailingWhitespace <line1>,<line2>s//(/s/| /)/+$// | norm! ``
    " command -range=% RT  <line1>,<line2>call RemoveTrailingWhitespace()

" }

" Filetype specific commands {

    " Set commenting for markdown files
    autocmd FileType markdown setlocal commentstring=/</!--/ %s/ --/>

    " Tab settings for R files
    autocmd FileType r setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" }
" set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

