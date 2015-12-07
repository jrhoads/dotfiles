"-----------------------------------------------------------------------------
" Base Setup
"-----------------------------------------------------------------------------
set encoding=utf-8
set nobackup
set nowritebackup
set noswapfile
set cursorline
set hidden
set rnu
set listchars=tab:▸\ ,trail:·,eol:¬
"-----------------------------------------------------------------------------
" LEADER REMAPPING
"-----------------------------------------------------------------------------
let mapleader = ","
"-----------------------------------------------------------------------------
" Navigate through windows and buffers with the leader
"-----------------------------------------------------------------------------
map <Leader>[ <C-W>W
map <Leader>] <C-W>w
map <Leader>- :bp<cr>
map <Leader>= :bn<cr>
map <Leader><TAB> <C-W>W
map <Leader><Space> :bn<cr>
map <Leader><S-Space> :bp<cr>
"-----------------------------------------------------------------------------
" Split Preferences
"-----------------------------------------------------------------------------
set splitbelow
set splitright
set colorcolumn=85
"-----------------------------------------------------------------------------
" Install Plugins
"-----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"# Colors
Plug 'sjl/badwolf'
Plug 'https://github.com/vim-scripts/Colour-Sampler-Pack.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/twerth/ir_black.git'
Plug 'https://github.com/tpope/vim-vividchalk.git'
Plug 'https://github.com/vim-scripts/molokai.git'
Plug 'https://github.com/vim-scripts/pyte.git'
Plug 'https://github.com/telamon/vim-color-github.git'
Plug 'https://github.com/larssmit/vim-getafe.git'
Plug 'https://github.com/TechnoGate/janus-colors.git'
Plug 'https://github.com/chriskempson/vim-tomorrow-theme.git'
Plug 'https://github.com/chriskempson/base16-vim.git'
"# Langs
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/tpope/vim-cucumber.git'
Plug 'https://github.com/tpope/vim-markdown.git'
Plug 'https://github.com/mustache/vim-mustache-handlebars.git'
Plug 'https://github.com/ajf/puppet-vim.git'
Plug 'https://github.com/rosstimson/scala-vim-support.git'
Plug 'https://github.com/kchmck/vim-coffee-script.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/tpope/vim-git.git'
Plug 'https://github.com/timcharper/textile.vim.git'
Plug 'https://github.com/skwp/vim-rspec.git'
Plug 'https://github.com/cakebaker/scss-syntax.vim.git'
Plug 'https://github.com/chrisbra/csv.vim.git'
Plug 'https://github.com/mmalecki/vim-node.js.git'
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/vim-scripts/Arduino-syntax-file.git'
Plug 'https://github.com/groenewege/vim-less.git'
Plug 'https://github.com/wlangstroth/vim-haskell.git'
Plug 'https://github.com/slim-template/vim-slim.git'
Plug 'https://github.com/jimenezrick/vimerl.git'
Plug 'https://github.com/sunaku/vim-ruby-minitest.git'
Plug 'https://github.com/guns/vim-clojure-static.git'
Plug 'https://github.com/elixir-lang/vim-elixir.git'
Plug 'https://github.com/tpope/vim-liquid.git'
Plug 'https://github.com/depuracao/vim-rdoc.git'
Plug 'https://github.com/fatih/vim-go.git'
"# Tools
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/edsono/vim-matchit.git'
Plug 'https://github.com/itspriddle/ZoomWin.git'
Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/michaeljsmith/vim-indent-object.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/mattn/webapi-vim.git'
Plug 'https://github.com/mattn/gist-vim.git'
Plug 'https://github.com/vim-scripts/vimwiki.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/Lokaltog/vim-easymotion.git'
Plug 'https://github.com/chrisbra/NrrwRgn.git'
Plug 'https://github.com/jeetsukumaran/vim-buffergator.git'
Plug 'https://github.com/rgarver/Kwbd.vim.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/skalnik/vim-vroom.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/tpope/vim-dispatch.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/thinca/vim-visualstar.git'
Plug 'https://github.com/bronson/vim-trailing-whitespace.git'
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/alfredodeza/pytest.vim.git'
Plug 'https://github.com/tmhedberg/SimpylFold.git'
Plug 'https://github.com/nvie/vim-flake8.git'
Plug 'bling/vim-airline'
call plug#end()
"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]
" Toggle Tagbar with F9
nnoremap <silent> <F9> :TagbarToggle<CR>.
"-----------------------------------------------------------------------------
" Annoyances
"-----------------------------------------------------------------------------
" Fix for accidentally typing in capital W to save.  Saves it anyway
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
" F1 no longer opens help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"-----------------------------------------------------------------------------
" Convenience
"-----------------------------------------------------------------------------
" Search with Ag (the silver sercher)
let g:ackprg = 'ag --nogroup --column'
" Find the word under the cursor
nmap <Leader>fw :Ack<space><C-R><C-W><CR>
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
" When saving py files, delete trailing whitespace
au BufWritePre *.py :%s/\s\+$//e
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css: set softtabstop=2
au BufNewFile,BufRead *.js,*.html,*.css: set shiftwidth=2
"-----------------------------------------------------------------------------
" SplitJoin Plugin Settings
"-----------------------------------------------------------------------------
nmap sk :SplitjoinSplit<cr>
nmap sj :SplitjoinJoin<cr>
"-----------------------------------------------------------------------------
" Svndiff Plugin Settings
"-----------------------------------------------------------------------------
noremap <F3> :call Svndiff("prev")<CR>
noremap <F5> :GundoToggle<CR>
noremap <F6> :call Svndiff("clear")<CR>
hi DiffAdd      ctermfg=0 ctermbg=2 guibg='green'
hi DiffDelete   ctermfg=0 ctermbg=1 guibg='red'
hi DiffChange   ctermfg=0 ctermbg=3 guibg='yellow'
let g:svndiff_autoupdate = 1
"-----------------------------------------------------------------------------
" Snipmate variables
"-----------------------------------------------------------------------------
let g:snips_author = 'Joseph Rhoads'
let g:snips_email = 'joseph_rhoads@brown.edu'
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
"-----------------------------------------------------------------------------
" Colorscheme
"-----------------------------------------------------------------------------
set background=light
colorscheme badwolf
