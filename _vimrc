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
set guifont=courier_new:h12
set guioptions=a
set autoindent
set lines=40 columns=120

set tabstop=2
set softtabstop=2

call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'       "auto close brace
Plug 'majutsushi/tagbar'
Plug 'jnurmine/Zenburn'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'davidhalter/jedi-vim'
"Plug 'rstacruz/sparkup',{ 'for':['html','vue'] }  
"Plug 'posva/vim-vue'
"Plug 'mattn/emmet-vim', { 'for': ['html', 'vue']}
call plug#end()


syntax on           " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
language message zh_CN.utf-8 " Use chinese message
set expandtab
set cursorline      "高亮光标所在行
"set cursorcolumn   "高亮光标所在列
"
"真彩色，否则显示不正常
if has('vcon')
set termguicolors
endif
colorscheme zenburn

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
"set foldmethod=marker
"set foldlevel=0
" Enable folding with the spacebar
nnoremap <space> za
nnoremap <F8> :TagbarToggle<CR>

" commnet the python
vnoremap <silent> <F6> :s/^/#/<cr>:noh<cr>
vnoremap <silent> <C-F6> :s/^#//<cr>:noh<cr>

let mapleader = ';'
autocmd FileType python setlocal completeopt-=preview
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix

if &term =~ "win32"
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"
endif
