set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/obsidian2.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tpope/vim-commentary'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-endwise'
Plugin 'terryma/vim-expand-region'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'eparreno/vim-l9'
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'janko-m/vim-test'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-tags'
Plugin 'croaker/mustang-vim'

call vundle#end()

filetype plugin indent on

set modelines=0
set guifont=Source\ Code\ Pro:h11

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
" set relativenumber
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nu
set undofile

let mapleader = ","
" let mapleader = "\<Space>"

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" save file with Leader w
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" go to line 12 using 12<Enter> instead of 12G
nnoremap <CR> G

set wrap

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

" au FocusLost * :wa
inoremap jj <ESC>

" nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Space> <C-w>w

map <leader>d :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

if has('gui_running')
  set guioptions-=TLRr
endif

syntax enable
" set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

:nmap <C-e> :b#<CR>

" CtlrP
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

map <Space> <C-W>w
map <C-Space> <C-W>W
map <leader>nrd :NERDTreeToggle<cr>'

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>ta :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>

" Keep all of vim supporting files in one place
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

map <leader>p "+p
map <leader>c "+y

let g:airline_theme='murmur'
let status = 2

map <C-[> <C-o>

let g:vim_tags_auto_generate = 1
let g:vim_tags_main_file = 'tags'
