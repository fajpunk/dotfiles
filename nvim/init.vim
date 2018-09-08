set all&

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'altercation/vim-colors-solarized'
" Plug 'bitc/vim-hdevtools'
Plug 'chriskempson/base16-vim'
" Plug 'eagletmt/neco-ghc'
Plug 'hashivim/vim-terraform'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
" Plug 'w0rp/ale'
" Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'parsonsmatt/intero-neovim'
" Plug 'zchee/deoplete-jedi'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'davidhalter/jedi-vim'
" Plug 'ervandew/supertab'
Plug 'epeli/slimux'
Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'alx741/vim-hindent'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'rust-lang/rust.vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Initialize plugin system
call plug#end()

filetype plugin indent on

set hidden
set ignorecase

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Use system clipboard for everything
set clipboard+=unnamedplus

" Default tab/space settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=8

set laststatus=2
set ruler
set wildmenu

set undodir=~/.local/share/nvim/undodir
set undofile
set termguicolors

let g:python_host_prog = '/home/dfuchs/.local/share/nvim/venv2/bin/python'
let g:python3_host_prog = '/home/dfuchs/.local/share/nvim/venv3/bin/python'

" General Bindings
let mapleader = "\<Space>"
let maplocalleader = ","
inoremap jk <Esc>
tnoremap jk <C-\><C-n>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>vv :source $MYVIMRC<CR>
nnoremap <leader><Tab> 

" Tabs
nnoremap tn :tabnew<CR>
nnoremap ti :tabprevious<CR>
nnoremap to :tabnext<CR>

" Colors
set background=dark
" colorscheme zenburn
colorscheme base16-mocha

" Airline
let g:airline_powerline_fonts = 1

" Deoplete
" call deoplete#enable()
" let g:deoplete#disable_auto_complete = 1
" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ deoplete#mappings#manual_complete()
"   function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
"   endfunction"}}}

" Nerdtree
nnoremap <leader>pt :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
nnoremap <leader>;; :call NERDComToggleComment()<CR>

" FZF
nnoremap <leader>pf :Files<CR>
nnoremap <leader>/ :Ag<CR>
nnoremap <leader>bb :Buffers<CR>

" Neomake
" autocmd! BufWritePost * Neomake

" Terraform
let g:terraform_align=1

" sliumx
map <leader>s :SlimuxREPLSendLine<CR>
vmap <leader>s :SlimuxREPLSendSelection<CR>
map <leader>b :SlimuxREPLSendBuffer<CR>
map <leader>a :SlimuxShellLast<CR>
map <leader>k :SlimuxSendKeysLast<CR>

" hindent
" let g:hindent_on_save = 0

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" ALE
nnoremap <Leader>d :ALEDetail<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "UltiSnipsPrivate"]
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnipsPrivate"
nnoremap <leader>ue :UltiSnipsEdit<CR>

" LauguageClient
let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
