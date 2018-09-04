set nocompatible          " We're running Vim
set encoding=utf-8
set termencoding=gbk
set nobackup		"We don't need the backup file
set showmatch		"Show where the bracket match
set showcmd
set ruler		"Show the line and column number 
set hlsearch		"Highlight the search key
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,chinese
set guifont=courier_new:h10
set guioptions=a
set autoindent
set columns=120


"filetype off
"set rtp+=c:\Users\len\.vim\bundle\Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tmhedberg/SimpylFold'       "避免注释或循环之类的缩进
"Plugin 'bling/vim-airline'
"Plugin 'Raimondi/delimitMate'       "自动括号闭合
"Plugin 'majutsushi/tagbar'

"call vundle#end()
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'       "auto close brace
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
call plug#end()


syntax on           " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
language message zh_CN.utf-8 " Use chinese message
color zenburn " Color theme
"set background=light
"color solarized
"color molokai
"color monokai
"let g:molokai_original = 1
"set expandtab
set cursorline      "高亮光标所在行
"set cursorcolumn   "高亮光标所在列

set mouse=a

"set completeopt=longest,menu
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"map key
vnoremap <C-V>	"+gP
"
"au GUIEnter * simalt ~x

vnoremap <C-C> "+y
map <C-tab> :tabnext<CR>
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
nnoremap <F8> :TagbarToggle<CR>

" commnet the python
vnoremap <silent> <F6> :s/^/#/<cr>:noh<cr>
vnoremap <silent> <C-F6> :s/^#//<cr>:noh<cr>

let mapleader = ';'
autocmd FileType python setlocal completeopt-=preview
