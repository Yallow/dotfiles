set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'

" The following are examples of different formats supported.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Some settings to enable the theme:
set number "Show line numbers
syntax enable "Use Syntax highlighting
set tabstop=4	" user 4 spaces per tab
set cursorline	" hightlight current line
set wildmenu	" visual autocomplete for commands
set lazyredraw	" redraw only when we need to
set showmatch	" highlight matching [{()}]

"Searching
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
" turns off the highlighting when done
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable	" enable folding
set foldlevelstart=10	" opens most fold by default
set foldnestmax=10	" 10 nested fold max
" space open/close folds
nnoremap <space> za
set foldmethod=indent	" fold based on indent level

"Movement
" highlight last inserted text
nnoremap gV `[v`]

"Leader Shortcuts
let mapleader=","	" leader is comma
" jk is escape (I never type these two keys in a row and saves my pinky
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
