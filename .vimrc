call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'kien/ctrlp.vim'
"Plug 'vivien/vim-linux-coding-style'
" rainbow parentheses improved
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plug 'L9'
" Plugin 'FuzzyFinder'
" Plugin 'DoxygenToolkit.vim'
" "Plugin 'OmniCppComplete'
"Plug 'AutoComplPop'
Plug 'fholgado/minibufexpl.vim'
Plug 'Raimondi/delimitMate'
Plug 'brookhong/cscope.vim'
" "Plugin 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
"Plugin 'haya14busa/incsearch.vim'
"Plugin 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
"Plugin 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Lokaltog/vim-easymotion'
Plug 'xolox/vim-misc'
Plug 'vim-scripts/sessionman.vim'
"Plugin 'xolox/vim-easytags'
Plug 'itchyny/thumbnail.vim'
Plug 'rhysd/vim-clang-format'
Plug 'nanotech/jellybeans.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/unite-outline'
Plug 'fatih/vim-go'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'elzr/vim-json'
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'
"Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'bitc/vim-bad-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'derekwyatt/vim-fswitch'
Plug 'kshenoy/vim-signature'
Plug 'godlygeek/tabular'
Plug 'mkitt/tabline.vim'
Plug 'mhinz/vim-grepper'
" Markdown / Writing
Plug 'reedes/vim-pencil'
Plug 'plasticboy/vim-markdown'
Plug 'mhinz/vim-startify'
Plug 'brooth/far.vim'
"Plug 'yuttie/comfortable-motion.vim'
" Vim Colors and Themes Plugins
Plug 'roosta/srcery'
Plug 'bcicen/vim-vice'
Plug 'rakr/vim-one'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'
" Language Syntax
Plug 'NLKNguyen/c-syntax.vim'
Plug 'Shirk/vim-gas'
Plug 'hdima/python-syntax'
Plug 'nickhutchinson/vim-systemtap'
" Test Misc.
Plug 'RRethy/vim-illuminate'

" Real-time completion (Neovim and Vim 8)
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
" Go
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer'
" delve (Neovim only)
"Plug jodosha/vim-godebug
"
" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

"""

set showcmd
set showmode
set showmatch

" bells
set noerrorbells
set visualbell
set guioptions=aAace

set ru
set autoindent
set cindent
set smartindent
set showmatch
set hls
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set hidden
set wrap linebreak
set showbreak=" "
set colorcolumn=80

" remap leader key to comma
let mapleader=","
let g:mapleader=","

" don't scan included files. The .tags file is more performance
set complete-=i

" Use Ctrl-l to clear the highlighting of :set hlsearch
nnoremap <silent><C-l> :nohlsearch<CR><C-l>

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set fileencoding=chinese
set ambiwidth=double

set title " set the terminal title
set noerrorbells " disable annoying beeps on errors
set visualbell " no beeping

" Auto center on matched string
noremap n nzz
noremap N Nzz

let g:session_autosave='no'

let NERDSpaceDelims=1

"set t_Co=256
set background=dark
"set background=light

" Rainbow Parentheses Improved
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}


"vim-markdown
let g:vim_markdown_formatter = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1

" Preserve selection after indentation
vmap > >gv
vmap < <gv

" enable Using tab and shift-tab to indent while in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Numbers
let g:enable_numbers = 0
" minibufexpl
let g:miniBufExplMaxSize = 1

" seoul256 (dark)
"   Range: 233 (darkest) ~ 239 (lightest)
"   Default: 253
let g:seoul256_background = 233
let g:seoul256_light_background = 253

colo PaperColor
"colo seoul256
"colo dracula

set cursorline

" mapped my most common FZF searches to leader commands:
"imap <c-x><c-o> <plug>(fzf-complete-line)
"map <leader>b :Buffers<cr>
"map <leader>f :Files<cr>
"map <leader>g :GFiles<cr>
"map <leader>t :Tags<cr>

let g:airline_powerline_fonts = 1

" give us nice EOL (end of line) characters
"set list
"set listchars=tab:▸\ ,eol:¬

set laststatus=2

" Moving quickfix window to the bottom
"autocmd FileType qf wincmd J
" Actually, it's the default bahavior of the quickfix window (see the first
" paragraph in `:h quickfix-window` after the commands). You can chagne it by
" replacing the `:copen` command in your mapping with `:botright copen`

" tabline.vim
"hi TabLine 	ctermfg=Black ctermbg=Green cterm=NONE
"hi TabLineFill ctermfg=Black ctermbg=Green cterm=NONE
"hi TabLineSel 	ctermfg=Black ctermbg=Green cterm=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Mapping Configurations
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Cscope
"0 or s: Find this C symbol
"1 or g: Find this definition
"2 or d: Find functions called by this function
"3 or c: Find functions calling this function
"4 or t: Find this text string
"6 or e: Find this egrep pattern
"7 or f: Find this file
"8 or i: Find files #including this file
"9 or a: Find places where this symbol is assigned a value
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>


nmap <C-m>n :NERDTreeToggle<CR>
nmap <C-m>m :TagbarToggle<CR>

map <leader>ts :tab split<CR>
map <C-x> :q<CR>

" grepper
nnoremap <leader>ga :Grepper -tool ag<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

set ts=4
set sw=4
set sts=4
" vim-go
"let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
let g:go_highlight_extra_types = 1
"let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_format_strings = 1

" Rust
" vim-racer
" goto-definition
"set hidden
"let g:racer_cmd = "/path/to/racer/bin"
" vim-racer enables C-x-C-o to search for completions and provides several
" <Plug> mappings for source code navigation.
au FileType rust nmap <silent> <C-]>  <Plug>(rust-def)
au FileType rust nmap <silent> <C-w><C-]> <Plug>(rust-def-vertical)
au FileType rust nmap <silent> <C-w>} <Plug>(rust-def-split)
au FileType rust nmap <silent> <C-k> <Plug>(rust-doc)

" vim-illuminate
let g:Illuminate_highlightUnderCursor = 1

" referenced from http://cscope.sourceforge.net/cscope_maps.vim
"if has("cscope")
"    """" standard cscope/vim boilerplate
"    " use both cscope and ctag for 'ctrl-]', ':ts', and 'vim -t'
"    set cscopetag
"    " check cscope for definition of a symbol before checking ctags
"    set csto=0
"    " add any cscope database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
"    " else add the database pointed to by environment variable
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
"    " show msg when any other cscope db added
"    set cscopeverbose
"endif

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable
  elseif  != ""
    cs add
  endif
endfunction
au BufEnter /* call LoadCscope()

