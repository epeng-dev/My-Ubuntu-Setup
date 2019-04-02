set autoindent
set cindent
set nu
set ts=4
set shiftwidth=4
set mouse=a
set encoding=utf8
set paste
set clipboard=unnamedplus

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set hlsearch " 검색어 하이라이팅
set incsearch

" " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
  
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'AutoComplPop'
Plugin 'taglist-plus'
Plugin 'Source-Explorer-srcexpl.vim'
Plugin 'The-NERD-tree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'Conque-Shell'
call vundle#end()

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'

syntax enable
set background=dark
colorscheme desert

"Key Mapping
map <F1> :tabnew<CR>
map <F2> gt
map <F3> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
