
map <leader>s :source ~/.vimrc<CR>
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-fugitive'
Plugin 'vim-airline'
Plugin 'vim-airline-themes'
Plugin 'wombat'
Plugin 'ctrlp.vim'
call vundle#end()


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif


syntax on
filetype on
"colorscheme Tomorrow-Night
set t_Co=256

set listchars=eol:¬,tab:>~
set list
set pastetoggle=<F3>
set expandtab
set background=dark
set cmdheight=2
set cursorline
set foldenable
set hlsearch
set laststatus=2
set lbr
set magic
set nocompatible
set noshowmode
set number
set relativenumber
set ruler
set shiftwidth=2
set softtabstop=2
set showcmd
set showmatch
set tabstop=2
set tw=500
set clipboard=unnamedplus
set wrap
set hidden
set showtabline=2
set wildmenu
set esckeys
set nostartofline

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" remap arrow keys
nnoremap <PageDown> :bprev<CR>
nnoremap <PageUp> :bnext<CR>


