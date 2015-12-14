set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Bundles here:
Plugin 'inkpot'
Plugin 'surround.vim'
Plugin 'ZoomWin'
" Plugin 'python.vim'
Plugin 'hynek/vim-python-pep8-indent'
" Plugin 'Command-T'
Plugin 'matchit.zip'
Plugin 'ack.vim'

if !has('nvim')
  Plugin 'LustyJuggler'
endif

" Plugin 'Lokaltog/vim-powerline'
Plugin 'Solarized'
Plugin 'Zenburn'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'fugitive.vim'
Plugin 'epeli/slimux'
Plugin 'Jinja'
Plugin 'ctrlp.vim'
Plugin 'repeat.vim'
Plugin 'UltiSnips'
Plugin 'confluencewiki.vim'
Plugin 'vim-coffee-script'
Plugin 'ruby.vim'
Plugin 'rails.vim'
Plugin 'endwise.vim'
Plugin 'Tabular'
Plugin 'https://github.com/rodjek/vim-puppet.git'
Plugin 'https://github.com/ntpeters/vim-better-whitespace.git'
"Plugin 'syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'

filetype plugin indent on
set softtabstop=2 shiftwidth=2 expandtab smartindent
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256
set bg=dark
set visualbell t_vb=
syntax enable
"let g:zenburn_high_Contrast=1
colorscheme zenburn
set hidden
nnoremap ' `
nnoremap ` '
let mapleader = ","
set history=1000
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set title
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
inoremap jk <esc>
set ruler
set number
set backspace=indent,eol,start
set hlsearch
set incsearch
set shortmess=at
set clipboard=unnamed  " make yanks pasteable systemwide
set wrap

" Use par to format paragraphs
" set formatprg=par\ -w80

" Quickfix navigation
nnoremap <C-N> :cn<cr>
nnoremap <C-P> :cp<cr>

" Faster window jumping
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" Do I really need to do this?
if !has('nvim')
  if has('mouse')
    set mouse=a
    if &term =~ "xterm" || &term =~ "screen"
      " for some reason, doing this directly with 'set ttymouse=xterm2'
      " doesn't work -- 'set ttymouse?' returns xterm2 but the mouse
      " makes tmux enter copy mode instead of selecting or scrolling
      " inside Vim -- but luckily, setting it up from within autocmds
      " works
      autocmd VimEnter * set ttymouse=xterm2
      autocmd FocusGained * set ttymouse=xterm2
      autocmd BufEnter * set ttymouse=xterm2
    endif
  endif
endif

" .vimrc editing shortcuts
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>vv :source $MYVIMRC<cr>

" nnoremap <leader>bb Ifrom nose import tools; tools.set_trace()<ESC>a<CR><ESC>
nnoremap <leader>bb Iimport ipdb; ipdb.set_trace()<ESC>a<CR><ESC>

" Powerline
let g:Powerline_symbols = 'fancy'
"
" VimClojure
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "/Users/fuchsd/src/vimclojure/client/ng"
let g:vimclojure#ParenRainbow = 1

" Python Mode
let g:pymode_folding = 0
let g:pymode_lint = 0
au! FileType python setl nosmartindent
"
" NERDTree
nnoremap <leader>n :NERDTree<cr>
let NERDTreeShowHidden=1

" fugitive.vim
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gs :Gstatus<cr>

" slimux
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>

" Command-T
" Thanks to
" https://wincent.com/blog/tweaking-command-t-and-vim-for-use-in-the-terminal-and-tmux
"set ttimeoutlen=50
"if &term =~ "xterm" || &term =~ "screen"
"  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
"  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
"  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
"endif
"let g:CommandTMaxHeight = 5

" Don't bother me!
nnoremap <leader>en :split ~/new_dev_notes.txt<cr>
nnoremap <leader>edn :split ~/code/official_mind/scratch/django_upgrade_notes.txt<cr>

" CtrlP
"nnoremap <leader>t :CtrlP<CR>
let g:ctrlp_map = '<leader>t'
set wildignore+=*.so,*.swp,*.pyc,*.tox,static_final/*

" Tabs
nnoremap tn :tabnew<CR>
nnoremap to :tabnext<CR>
nnoremap ti :tabprevious<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
nnoremap <leader>use :UltiSnipsEdit<cr>

" Ruby
let ruby_space_errors = 1

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
