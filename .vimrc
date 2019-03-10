" environment setup begin
set cursorline
set lazyredraw
set rnu
set softtabstop=4 expandtab         " add 4 space when press tab and remove 4 space when backspace
set autoindent
set backspace=indent,eol,start      " allow vim to delete(backspace) in insert mode
set timeoutlen=1000 ttimeoutlen=0   " timeoutlen used for mapping delays; timeoutlen used for code delays
set wildmenu
set background=dark
colorscheme lucario
set tabpagemax=100                  " increase vim -p  from default 10 to n
set number                          " show current line as acutal line number instead of 0
syntax on
" environment setup end

" Vim plugin manager
" vundle start
set nocompatible                    " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime patch to include Vundle and initialize
call vundle#begin()                 " plugin begin (plugin must put between start and end)
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
call vundle#end()                   " plugin end
filetype plugin on 
" vundle end

" vim-airline
set t_Co=256
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
let g:powerline_pycmd="py"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1        " enable bufferline
let g:airline_powerline_fonts=1                     " enable powerline font
let g:airline#extensions#tabline#fnamemod = ':t'    " display only filename in buffer
let g:airline#extensions#tabline#show_tab_nr = 0    " disable tab number when open multiple tab
let g:airline#extensions#tabline#show_tab_type = 0
" vim-airline end


" NERDTree begin
map <C-n> :NERDTreeToggle<CR>   "shortcut to toggle NERDTree using Ctrl+n
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " close vim if last window is NERDTree
let g:NERDTreeWinSize=35
:let g:NERDTreeShowLineNumbers=1
:autocmd BufEnter NERD_* setlocal rnu
let NERDTreeMinimalUI=1
" NERDTree end

" CtrlP Start 
let g:ctrlp_open_new_file = 't'  " open on new tab instead of the default vertical split when pressing <c-y>
" CtrlP End

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
