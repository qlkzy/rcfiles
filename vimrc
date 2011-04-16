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

set softtabstop=2
set shiftwidth=4
set tabstop=4
set expandtab

