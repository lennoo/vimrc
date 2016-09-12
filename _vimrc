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

filetype off
set rtp+=c:/Bin/Vim/vimfiles/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'       "避免注释或循环之类的缩进
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'       "自动括号闭合
Plugin 'Valloric/YouCompleteMe'

call vundle#end()


syntax on           " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
language message zh_CN.utf-8 " Use chinese message
color zenburn " Color theme
"set background=light
"color solarized
"color molokai
"let g:molokai_original = 1
"set nu  " 是否启用行号
set softtabstop=2
set shiftwidth=2
set expandtab
set cursorline      "高亮光标所在行
"set cursorcolumn   "高亮光标所在列

set mouse=a

set completeopt=longest,menu
autocmd FileType python set omnifunc=pythoncomplete#Complete
"map key
vnoremap <C-V>	"+gP
"
"au GUIEnter * simalt ~x

vnoremap <C-C> "+y
map <C-tab> :tabnext<CR>
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
":inoremap ( ()<ESC>i
":inoremap ) <C-R>=ClosePair(')')<CR>;
":inoremap { {<CR>}<ESC>O
":inoremap } <C-R>=ClosePair('}')<CR>;
"":inoremap [ []&lt;ESC&gt;i
"":inoremap ] &lt;c-r&gt;=ClosePair(']')&lt;CR&gt;
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)
"if getline('.')[col('.') - 1] == a:char
"return "\<Right>"
"else
"return a:char
"endif
"endfunction

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
