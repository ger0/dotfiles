set nocompatible              " be iMproved, required
set number
set relativenumber
set smarttab
set expandtab
set hlsearch

filetype off                  " required

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scroolloose/nerdtree'
"Plugin 'bling/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight' 

call vundle#end()            " required
filetype plugin indent on    " required

" shortcuts
map <C-n> :NERDTreeToggle<CR>
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>

" c++ highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

colorscheme onedark

" tab
set tabstop=3
set shiftwidth=3
set expandtab

syntax enable

" no arrows
let g:elite_mode = 1

if get(g:, 'elite_mode')
    nnoremap <Down>    :resize +2<CR>
    nnoremap <Up>  :resize -2<CR>
    nnoremap <Right>  :vertical resize +2<CR>
    nnoremap <Left> :vertical resize -2<CR>
endif

