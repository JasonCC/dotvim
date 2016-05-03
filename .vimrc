set nocompatible
filetype plugin on
filetype indent on
syntax on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/syntastic'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'DoxygenToolkit.vim'
"Plugin 'OmniCppComplete'
Plugin 'AutoComplPop'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'brookhong/cscope.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'haya14busa/incsearch.vim'
"Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-easytags'
Plugin 'itchyny/thumbnail.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite-outline'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/context_filetype.vim'
Plugin 'Shougo/neoinclude.vim'
Plugin 'Shougo/neco-syntax'
Plugin 'elzr/vim-json'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'myusuf3/numbers.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

set nu
set autoindent
set cindent
set smartindent
set showmatch
set hls
set incsearch
set ignorecase
set wildmenu

"set shiftwidth=8
set ts=8
set sts=8
set sw=8
"set shiftwidth=4
set ru
"set colorcolumn=80
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
"autocmd BufNewFile,BufRead *.s :cal SetSyn("asmMIPS")
set confirm
set noexpandtab
set smarttab

" Encodings
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set fileencoding=chinese
set ambiwidth=double

let mapleader=","
let g:mapleader=","

set tags+=tags

" GUI font and colorscheme
set guifont=Hack:h12
"colorscheme wombat256mod
"set guifont=Menlo:h12
"colorscheme PerfectDark
"set modelines=5
"colorscheme github
colorscheme darkburn

" Python Identation
" PEP8
au BufNewFIle,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Identation for JavaScript, HTML, CSS
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flagging Unneccessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.cc match BadWhitespace /\s\+$/

"incsearch.vim
"map / <Plug>(incsearch-forward)
"map ? <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlearch
"nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>!
"set hlsearch
"let g:incsearch#auto_nohlsearch = 1
"map n <Plug>(incsearch-nohl-n)
"map N <Plug>(incsearch-nohl-N)
"map * <Plug>(incsearch-nohl-*)
"map # <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)

let g:session_autosave = 'no'

let NERDSpaceDelims=1

"Cscove
nnoremap <leader>fa :call cscope#findInteracive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find function called by this function
nnoremap <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find function calling this function
nnoremap <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

" ultisnips
let g:UltiSnipsUsePythonVerion = 2
" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackTrigger="<c-z>"
" If you wasnt :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"

" airline
set laststatus=2
let g:airline_powerline_fonts=1
"let g:airline_theme="base16"

" SimpylFold
let g:SimpylFold_docstring_preview=1

" vim-indent-guides
" :help indent-guildes

" rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',	      'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"vim-markdown
let g:vim_markdown_folding_disabled = 1
