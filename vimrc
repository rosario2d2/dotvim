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

" plugins
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

call vundle#end()

" ==================================================
" Color scheme and fonts
" ==================================================
colorscheme mustang

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 13
    set guioptions-=T " no toolbar
    set guioptions-=m " remove menu bar
    set guioptions-=L " remove left-hand scroll bar
else
    set t_Co=256
endif

" ==================================================
" Basic Settings
" ==================================================
"set textwidth=80     " no lines longer than 80 cols
"set formatoptions-=t " disable automatic wrapping
set cindent          " cindent
set autoindent       " autoindenting on
set number           " show line numbers
set mouse=a          " enable mouse support
set tabstop=4        " numbers of spaces of tab character
set shiftwidth=4     " numbers of spaces to (auto)indent
set expandtab        " tab to spaces by default
set wrap             " wrap long lines to fit the window
set linebreak        " break lines without breaking words
set nolist           " list disables linebreak

syntax on
filetype plugin indent on
let g:netrw_dirhistmax = 0
inoremap jj <ESC>

" ==================================================
" Search settings
" ==================================================
set hlsearch   " highlight searches
set incsearch  " do incremental searching
set ignorecase " ignore case when searching
set smartcase  " if searching and search contains upper case, make case sensitive search

" ==================================================
" Lightline
" ==================================================
set laststatus=2
set noshowmode

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
