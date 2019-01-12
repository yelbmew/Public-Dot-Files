" environment Setup
set cursorline
set lazyredraw
set rnu
set softtabstop=4 expandtab         " add 4 space when press tab and remove 4 space when backspace 
set autoindent			    " this and below config see no difference
set backspace=indent,eol,start      " allow vim to delete(backspace) in insert mode
set timeoutlen=1000 ttimeoutlen=0   " import to add this -> timeoutlen used for mapping delays; timeoutlen used for code delays
set wildmenu
set background=dark
colorscheme lucario
set tabpagemax=100                  " set higher limit for vim -p (default will only open 10 file) to 100
set number                          " hybrid , show current line as acutal line number instead of 0
xnoremap p pgvy                     " allow to yank multiple times
syntax on


" vundle plugin manager config
set nocompatible                    " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime patch to include Vundle and initialize
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Yggdroot/indentLine'
Plugin 'Chiel92/vim-autoformat'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
" filetype plugin indent on    " required

" vim airline setup
set t_Co=256
let g:airline_theme='base16'
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
let g:powerline_pycmd="py"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1        " enable bufferline
let g:airline_powerline_fonts=1                     " enable powerline font
let g:airline#extensions#tabline#fnamemod = ':t'    " display only filename in buffer
let g:airline#extensions#tabline#show_tab_nr = 0    " disable tab number when open multiple tab
let g:airline#extensions#tabline#show_tab_type = 0


"NERDTree
map <C-n> :NERDTreeToggle<CR>   "shortcut to toggle NERDTree using Ctrl+n
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " close vim if last window is NERDTree
let g:NERDTreeWinSize=35
:let g:NERDTreeShowLineNumbers=1
:autocmd BufEnter NERD_* setlocal rnu
let NERDTreeMinimalUI=1
" autocmd StdinReadPre * let s:std_in=1
" autocmd BufWinEnter * NERDTreeMirror    "open NerdTree in each single tab
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif    "open NERDTree tree list by default

" for practice purpose
" disable arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
