set go=

" show number
set nu

" theme style
colorscheme hybrid_material

" syntax heighlight
syntax on
autocmd FileType vue syntax sync fromstart

" completion
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" tab config
set tabstop=4
set shiftwidth=4
set smarttab

" search highlight
set hlsearch

set nocompatible

" auto indent
set autoindent

" file type
filetype on
filetype indent on


" --------------
" Key Mapping
" --------------

map <C-p> :FZF<CR>
map <C-x> :q!<CR>
map <C-w> :x<CR>

" --------------
" Function
" --------------

function PythonHeader()
	call setline(1,  "# anyisalin@gmail.com " . strftime('%Y-%m-%d', localtime()))
	normal G
	normal 2o
endf

autocmd bufnewfile *.py call PythonHeader()

" --------------
" Plugin Manager
" --------------

call plug#begin('~/.vim/plugged')

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'flazz/vim-colorschemes'
  Plug 'posva/vim-vue'

call plug#end()
