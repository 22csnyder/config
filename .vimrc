set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/Projects/config/.vim/bundle/Vundle.vim


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Call :PlugInstall when you add something new

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'

"Specifying this way, vimplug will not autoupdate big YCM package
Plug '~/.vim/plugged/YouCompleteMe'
"Plug 'Valloric/YouCompleteMe'

"Use gl or gL operators for alignment: 
"try gl=
"glip
"3gLi(,
Plug 'tommcdo/vim-lion'

Plug 'bluz71/vim-moonfly-colors'

"alt colorscheme
"Plug 'rakr/vim-one'


"The vim-visual-star-search plugin allows * and # searches to occur on the current visual selection.
Plug 'nelstrom/vim-visual-star-search'


"ciw - change inside word
"yi) - yank inside parenthesis
"vat - visually select around tag
"di" - delete inside double quotes

"ci* - change inside star
"va| - visually select around pipe
"ci_ - change inside underscore
Plug 'wellle/targets.vim'


"Highlighting for f movement
Plug 'rhysd/clever-f.vim'
let g:clever_f_across_no_line = 1
let g:clever_f_timeout_ms = 3000


"Plugin 'scrooloose/syntastic'



call plug#end()


"#call vundle#begin()
"#
"#" alternatively, pass a path where Vundle should install plugins
"#" call vundle#begin('/home/chris/Projects/config/.vim/bundle')
"#
"#" let Vundle manage Vundle, required
"#Plugin 'gmarik/Vundle.vim'
"#Plugin 'tmhedberg/SimpylFold'
"#Plugin 'vim-scripts/indentpython.vim'
"#"Bundle 'Valloric/YouCompleteMe'
"#"Plugin 'scrooloose/syntastic'
"#
"#
"#" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"#
"#" All of your Plugins must be added before the following line
"#call vundle#end()            " required



":h filetype
":filetype
":filetype detect
"seems to undo 'filetype off'
filetype plugin indent on    " required
"filetype plugin on    " required


"modelines are pieces of text you put in a file you are editing to get
"specific behavior in that file. I guess this disables that option
set nomodeline

set clipboard=unnamedplus

set number
set relativenumber

" enable syntax highlighting
syntax enable

"colorscheme solarized
set background=dark


" makes code look pretty
"let python_highlight_all=1
"syntax on

set tabstop=4
set shiftwidth=4
set expandtab

"au short for autocmd
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1


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

"Plugin specific
"SimpylFold
"See docstrings for folded code
let g:SimpylFold_docstring_preview=1

"YouCompleteMe
let g:ycm_python_binary_path='python'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


