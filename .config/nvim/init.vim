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
Plugin 'preservim/nerdtree'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'octol/vim-cpp-enhanced-highlight' 
Plugin 'cpiger/NeoDebug'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'zchee/deoplete-clang'
Plugin 'dense-analysis/ale'
Plugin 'beyondmarc/glsl.vim'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()            " required
"call deoplete#enable()
filetype plugin indent on    " required

" shortcuts
map <C-n> :NERDTreeToggle<CR>
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>

let g:glsl_default_version = 'glsl330'

" c++ highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc': [ 're!\w{3}', '_' ],
  \ }
let g:ycm_add_preview_to_completeopt = "popup"
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

" testing
let g:ale_cpp_clangtidy_options = "-Wredundant-decls -Wcast-align -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Wextra -Wall -Werror -Winvalid-pch -Wredundant-decls -Wmissing-prototypes -Wformat=2 -Wmissing-format-attribute -std=c++20 -x c++"
let g:ale_cpp_clangcheck_options = "-Wredundant-decls -Wcast-align -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Wextra -Wall -Werror -Winvalid-pch -Wredundant-decls -Wmissing-prototypes -Wformat=2 -Wmissing-format-attribute -std=c++20 -x c++"

colorscheme onedark

" tab
set tabstop=3
set shiftwidth=3
set expandtab

syntax enable

" mouse
set mouse=a
" no arrows
let g:elite_mode = 1
if get(g:, 'elite_mode')
    nnoremap <Down>    :resize +2<CR>
    nnoremap <Up>  :resize -2<CR>
    nnoremap <Right>  :vertical resize +2<CR>
    nnoremap <Left> :vertical resize -2<CR>
endif

