set nocompatible

" ==================================================
" Vundle
" ==================================================
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'msanders/snipmate.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'yegappan/mru'
Plugin 'majutsushi/tagbar' " requires exuberant-ctags
Plugin 'Raimondi/delimitMate'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'godlygeek/tabular'
Plugin 'rayburgemeestre/phpfolding.vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()

" ==================================================
" Color scheme and fonts
" ==================================================
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 13
    set guioptions-=T " no toolbar
    set guioptions-=m " remove menu bar
    set guioptions-=L " remove left-hand scroll bar
else
    set t_Co=256
endif

if $TERM == "linux"
    colorscheme desert
else
    colorscheme mustang
endif

" ==================================================
" Basic Settings
" ==================================================
"set textwidth=80     " no lines longer than 80 cols
"set formatoptions-=t " disable automatic wrapping
set cindent                    " cindent
set autoindent                 " autoindenting on
set number                     " show line numbers
set cursorline                 " highlight current line
set wildmenu                   " visual autocomplete for command menu
set wildmode=list:longest,full " show a list of completions for wildmenu
set foldenable                 " enable folding
set foldlevelstart=99          " folds are always open by default
set foldmethod=indent          " fold based on indent level
set mouse=a                    " enable mouse support
set tabstop=4                  " numbers of spaces of tab character
set shiftwidth=4               " numbers of spaces to (auto)indent
set expandtab                  " tab to spaces by default
set wrap                       " wrap long lines to fit the window
set linebreak                  " break lines without breaking words
set nolist                     " list disables linebreak

syntax on                 " enable syntax processing
filetype plugin indent on " load filetype-specific indent files

" do not create a .netrwhist history file
let g:netrw_dirhistmax = 0

" leader is comma
let mapleader=","

" jj is escape
inoremap jj <ESC>

" ==================================================
" Backup settings
" ==================================================
set backup           " make a backup before overwriting a file
set backupdir=/tmp   " backup files dir
set directory=/tmp// " swap files dir

" ==================================================
" Search settings
" ==================================================
set hlsearch   " highlight searches
set incsearch  " do incremental searching
set ignorecase " ignore case when searching
set smartcase  " if searching and search contains upper case, make case sensitive search

" turn off search highlight
map <leader><space> :nohlsearch<CR>

" ==================================================
" Lightline
" ==================================================
set laststatus=2 " show lightline
set noshowmode   " hide default vim mode information

" ==================================================
" Tagbar
" ==================================================
map <F8> :TagbarToggle<CR>

" ==================================================
" NERDTree
" ==================================================
map <F7> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.mp4$','\.avi$','\.mp3$','\.jpg$','\.png$','\.pdf$','\.doc$','\.iso$','\.zip$']

" ==================================================
" EasyMotion
" ==================================================
let g:EasyMotion_do_mapping = 0 " disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
