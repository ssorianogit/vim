runtime! debian.vim

map <leader>s :source ~/.vimrc<CR>
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-fugitive'
Plugin 'wombat'
Plugin 'ctrlp.vim'
call vundle#end()


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif


syntax on
filetype on
colorscheme Tomorrow-Night
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
set wrap "Wrap lines




let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
