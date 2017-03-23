set all&

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'neovimhaskell/haskell-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'altercation/vim-colors-solarized'
" Plug 'bitc/vim-hdevtools'
Plug 'chriskempson/base16-vim'
Plug 'eagletmt/neco-ghc'
Plug 'hashivim/vim-terraform'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'zchee/deoplete-jedi'
" Plug 'godlygeek/tabular'
Plug 'davidhalter/jedi-vim'
" Plug 'ervandew/supertab'
Plug 'epeli/slimux'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'parsonsmatt/intero-neovim'
Plug 'alx741/vim-hindent'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

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
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>ti :tabprevious<CR>
nnoremap <leader>to :tabnext<CR>

" Colors
set background=dark
colorscheme zenburn

" Airline
let g:airline_powerline_fonts = 1

" Deoplete
call deoplete#enable()
let g:deoplete#disable_auto_complete = 1
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ deoplete#mappings#manual_complete()
  function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}

" Nerdtree
nnoremap <leader>pt :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" Terraform
" let g:terraform_align=1

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
nnoremap <leader>;; :call NERDComToggleComment()<CR>

" FZF
nnoremap <leader>pf :Files<CR>
nnoremap <leader>/ :Ag<CR>
nnoremap <leader>bb :Buffers<CR>

" Neomake
autocmd! BufWritePost * Neomake

" Terraform
let g:terraform_align=1

" sliumx
map <localleader>s :SlimuxREPLSendLine<CR>
vmap <localleader>s :SlimuxREPLSendSelection<CR>
map <localleader>b :SlimuxREPLSendBuffer<CR>
map <localleader>a :SlimuxShellLast<CR>
map <localleader>k :SlimuxSendKeysLast<CR>

" hindent
let g:hindent_on_save = 0
