au BufNewFile,BufRead *.py
    \ set tabstop=4 
    \| set softtabstop=4 
    \| set shiftwidth=4 
    \| set textwidth=79 
    \| set expandtab 
    \| set autoindent 
    \| set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css 
    \ set tabstop=2 
    \| set softtabstop=2 
    \| set shiftwidth=2

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set number
set encoding=utf-8
set nocompatible              " required
filetype off                  " required
set splitbelow
set splitright
set clipboard=unnamed

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

"python with virtualenv support
py3 3 
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
syntax enable
so ~/.vim/bundle/vim-colors-solarized/autoload/togglebg.vim
call togglebg#map("<F5>")

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'vim-scripts/indentpython.vim'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
