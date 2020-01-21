set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
let g:vundle_default_git_proto = 'git'
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Theme Plugins
Plugin 'crusoexia/vim-monokai'
Plugin 'itchyny/lightline.vim'
Plugin 'reedes/vim-colors-pencil'

" General Editing
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim'

" Language Plugins
Plugin 'fatih/vim-go'

" Searching
Plugin 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Navigation
Plugin 'scrooloose/nerdtree'

" Tool Integration
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Change color scheme when you enter or exit goyo 
function! s:goyo_enter()
    colorscheme pencil
endfunction

function! s:goyo_leave()
    colorscheme monokai
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" NerdTree Toggle
map <C-o> :NERDTreeToggle<CR>

" Status Bar Color Scheme
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" Other settings
colorscheme monokai
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set laststatus=2
set numberwidth=4
set backspace=indent,eol,start
set nofoldenable " Disable folding in the editor, may re-enable later

" Enable spell checking by file type
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

" Force proper colors (Disable Background Color Erase).
set t_ut=
