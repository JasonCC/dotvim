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
"Plugin 'xolox/vim-easytags'
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

set nu				" (number) display line numbers
set ru				" (ruler) show cursor position
set autoindent			" autoindent when starting new line, or using o or O
set cindent
set smartindent
set showmatch
set hls
set incsearch			" highlight matching as you type
set ignorecase			" case insensitive matching
set smartcase			" turns case-sensitive if expression contains
set wildmenu			" enhanced command line completion
set wildmode=list:longest	" complete files like a shell
set backspace=indent,eol,start	" intuitive backspacing
set hidden			" handle multiple buffers better
"set wrap	 		" turn on line wrapping
set wrap linebreak
set showbreak=" "
"set scrolloff=3			" show 3 lines of context around the cursor
"set nomodeline

" remap leader key to comma
let mapleader=","
let g:mapleader=","

" don't scan included files. The .tags file is more performant
set complete-=i

" use normal (perl-style) regext formating
"nnoremap / /\v
"vnoremap / /\v

"set shiftwidth=8
set ts=8
set sts=8
set sw=8
"set shiftwidth=4
"set colorcolumn=80
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
"autocmd BufNewFile,BufRead *.s :cal SetSyn("asmMIPS")
set confirm
set noexpandtab

" Use 'shiftwidth' when using <Tab> in front of a line. By default it's used
" only for shift commands (<, >)
set smarttab

" Disable octal format for number processing
set nrformats-=octal

" Use Ctrl-L to clear the highlighting of :set hlsearch
nnoremap <silent><C-L> :nohlsearch<CR><C-L>

" Show the size of block one selected in visual mode
set showcmd

" Reload unchanged files automatically
set autoread

" Support all kind of EOLs by default
set fileformats+=mac

" Increase history size to 1000 iterms
set history=1000

" Allow for up to 50 opened tabs on Vim start
set tabpagemax=50

" Highlight line under cursor. It helps with navigation
set cursorline

" Search upwards for tags files instead only locally
if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

" Allow color schemes to do bright colors without forcing bold
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Encodings, set the character encoding used inside Vim
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set fileencoding=chinese
set ambiwidth=double

set title			" set the terminal title
set noerrorbells		" disable annoying beeps on errors
set visualbell			" no beeping
"set nobackup			" don't make backup before overwriting file
"set nowritebackup		" same again
"set expandtab			" use space instead tab
"set list			" display unprintable characters
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" Do not fold by default. But if, do it up to 3 levels
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Enable mouse for scrolling and window resizing
"set mouse=a

" Disable swap to prevent annoying messages
set noswapfile

" Auto center on matched string
noremap n nzz
noremap N Nzz

" Visually select the text that was last edited/pasted (Vimcast#26)
noremap gV `[v`]

" Don't display the intro message on starting Vim
set shortmess+=I

" Use Silber Search for CtrlP plugin (if available) Fallback to git ls-files
" for fast listing. Because we use fast strategies, disable caching.
let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git',
    \ 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f' ]
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")' : ['<space>', '<cr>', '<2-LeftMouse>'],
    \}
endif

" Keep flags when repeating last substitute command
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Make a simple "search" text object.
" (http://vim.wikia.com/wiki/Copy_or_change_search_hit)
" It allows for replacing search matches with cs and then /././.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
  \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" GUI font
if has("gui_macvim")
"  set guifont=Monoco:h13
  set guifont=Hack:h12
else
  set guifont=Hack
endif

" Colorscheme
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
" :help indent-guilde

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

" Preserve selection after indentation
vmap > >gv
vmap < <gv

" enable Using tab and shift-tab to indent while in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv
