set nocompatible              " be iMproved, required
set number
set relativenumber
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scroolloose/nerdtree'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" airline support
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1

syntax enable
set background=dark
"colorscheme solarized
colorscheme monokai
