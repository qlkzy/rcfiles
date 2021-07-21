set nocompatible
set backspace=indent,eol,start

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
  colorscheme base16-brewer
endif

if has('mouse')
   set mouse=a
endif

syntax on
set hlsearch

set autoindent

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set ignorecase
set smartcase
set incsearch
set wildmenu

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set guifont=Monospace\ 12
set guioptions-=T

filetype plugin indent on


let mapleader=','
nnoremap <Leader>, :!%:p<cr>

