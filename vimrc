"-----------------------------------------------------------------------------
" Base Setup
"-----------------------------------------------------------------------------
set encoding=UTF-8
set nobackup
set nowritebackup
set noswapfile
set cursorline
set hidden
set rnu
set number
set ruler
set numberwidth=5
set visualbell
set listchars=tab:│·,trail:·,eol:¬
set smartcase
set ignorecase
set lazyredraw
set laststatus=2

"-----------------------------------------------------------------------------
" LEADER REMAPPING
"-----------------------------------------------------------------------------
let mapleader = ","
"-----------------------------------------------------------------------------
" Install Plugins
"-----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"# Colorscheme
Plug 'shaond/vim-guru'
Plug 'NLKNguyen/papercolor-theme'
"# Langs
Plug 'sheerun/vim-polyglot'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

"# Tools
Plug 'vim-airline/vim-airline'
Plug 'tomtom/tlib_vim'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/alfredodeza/pytest.vim.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/bronson/vim-trailing-whitespace.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'mlaursen/vim-react-snippets'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'https://github.com/jeetsukumaran/vim-buffergator.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/thinca/vim-visualstar.git'
Plug 'https://github.com/tmhedberg/SimpylFold.git'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'maralla/completor.vim'
Plug 'maralla/completor-typescript'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ap/vim-buftabline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-slash'
Plug 'junegunn/vim-journal'
Plug 'ryanoasis/vim-devicons'
call plug#end()
"-----------------------------------------------------------------------------
" Navigate through windows and buffers with the leader
"-----------------------------------------------------------------------------
let g:buffergator_suppress_keymaps = 1
nnoremap <silent> <Leader><TAB> <C-W>W
nnoremap <silent> <Leader><Space> :bn<cr>
nnoremap <silent> <Leader><Leader> :bp<cr>
nnoremap <silent> <Leader>b :BuffergatorToggle<cr>
"-----------------------------------------------------------------------------
" Split Preferences
"-----------------------------------------------------------------------------
set splitbelow
set splitright
"-----------------------------------------------------------------------------
" PyTest Plugin Settings
"-----------------------------------------------------------------------------
nmap <silent><Leader>ff <Esc>:Pytest file<CR>
nmap <silent><Leader>fc <Esc>:Pytest class<CR>
nmap <silent><Leader>fm <Esc>:Pytest method<CR>
"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F6
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]
" Toggle Tagbar with F9
nmap <F9> :TagbarToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"-----------------------------------------------------------------------------
" Convenience
"-----------------------------------------------------------------------------
" Search with Ag (the silver sercher)
let g:ackprg = 'ag --nogroup --nocolor --column'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
" Find the word under the cursor
nmap <Leader>fw :Ack<space><C-R><C-W><CR>
nnoremap \ :Ack<SPACE>
" Highlight search
set hlsearch
" Toggle List Characters
nmap <leader>l :set list!<CR>
" Toggle Folding
set foldmethod=indent
set foldlevel=99
nnoremap <Space> za
" Escape from the home row
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap kk <Esc>
" Delete trailing white space on save, useful for some filetypes ;)
function CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" When saving files, delete trailing whitespace
au BufWritePre *txt,*.json,*.ts,*.js,*.wiki,*.sh,*.rb,*.coffee,*.py: call CleanExtraSpaces()

" When workign with python files use the following options
au BufNewFile,BufRead *.py call SetPythonOptions()
function SetPythonOptions()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set fileformat=unix
    nnoremap <LocalLeader>= :0,$!yapf<CR>
endfunction

au BufNewFile,BufRead *.rb call SetRubyOptions()
function SetRubyOptions()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set fileformat=unix
    nnoremap <silent><Leader>ff <Esc>:!bundle exec rspec<CR>
endfunction

function SetWebOptions()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab
    set autoindent
    set fileformat=unix
    highlight htmlArg cterm=italic
    highlight htmlArg gui=italic
endfunction

au BufNewFile,BufRead *.js,*.html,*.css,*.scss,*.sass: call SetWebOptions()
au BufNewFile,BufRead *.html set filetype=htmldjango
"-----------------------------------------------------------------------------
" SplitJoin Plugin Settings
"-----------------------------------------------------------------------------
nmap sk :SplitjoinSplit<cr>
nmap sj :SplitjoinJoin<cr>
"-----------------------------------------------------------------------------
" Airline Variables
"-----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
"-----------------------------------------------------------------------------
" Snipmate variables
"-----------------------------------------------------------------------------
let g:snipMate = { 'snippet_version' : 1 }
let g:snips_author = 'Joseph Rhoads'
let g:snips_email = 'jrhoads@datacite.org'
let g:snips_github = 'jrhoads'
"-----------------------------------------------------------------------------
"" Fix constant spelling mistakes
"-----------------------------------------------------------------------------
iab teh       the
iab Teh       The
iab taht      that
iab Taht      That
iab alos      also
iab Alos      Also
iab aslo      also
iab Aslo      Also
iab becuase   because
iab Becuase   Because
iab bianry    binary
iab Bianry    Binary
iab bianries  binaries
iab Bianries  Binaries
iab charcter  character
iab Charcter  Character
iab charcters characters
iab Charcters Characters
iab exmaple   example
iab Exmaple   Example
iab exmaples  examples
iab Exmaples  Examples
iab shoudl    should
iab Shoudl    Should
iab seperate  separate
iab Seperate  Separate
iab fone      phone
iab Fone      Phone
iab collectoin collection
iab Collectoin Collection
iab allignment alignment
iab Allignment Alignment
"-----------------------------------------------------------------------------
" Colorscheme
"-----------------------------------------------------------------------------
set background=dark
colorscheme PaperColor
set colorcolumn=81
"-----------------------------------------------------------------------------
" XML settings
"-----------------------------------------------------------------------------
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'
"-----------------------------------------------------------------------------
" GOYO settings
"-----------------------------------------------------------------------------
nnoremap <Leader>gy :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"-----------------------------------------------------------------------------
" Limelight settings
"-----------------------------------------------------------------------------
let g:limelight_conceal_ctermfg = 'gray'

"Enable moving by visible lines
nnoremap <Leader>gg :nnoremap j gj<CR>:nnoremap k gk<CR>
nnoremap <Leader>gx :nunmap j<CR>:nunmap k<CR>

"Enable Italics in Comments
highlight Comment cterm=italic
"set t_ZH=^[[3m
"set t_ZR=^[[23m
"-----------------------------------------------------------------------------
" Local config
"-----------------------------------------------------------------------------
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

"Move increment so it doesn't conflict with tmux
:nnoremap <A-a> <C-a>
:nnoremap <A-x> <C-x>
