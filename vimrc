set nocompatible
set backspace=indent,eol,start

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
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

colorscheme slate

filetype plugin indent on

