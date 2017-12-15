" leader
let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" javascript 문법 하이라이팅 
Plugin 'jelera/vim-javascript-syntax'

" typescript 문법
Plugin 'leafgarland/typescript-vim'

" javascript 인덴트 
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

" 자동 괄호 완성
Plugin 'Raimondi/delimitMate'


" Camel Case 모션
Plugin 'bkad/camelcasemotion'

" NERDTree
Plugin 'scrooloose/nerdtree'

" NERDTree commenter
Plugin 'scrooloose/nerdcommenter'

" 상태바
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" git 
Plugin 'tpope/vim-fugitive'

" syntax check 
Plugin 'scrooloose/syntastic'

" find file
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" Close NERDTree window
let g:ctrlp_dont_split = 'NERD'

" reactjs syntax
Plugin 'mxw/vim-jsx'

" emmet
Plugin 'mattn/emmet-vim'

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
\  }

" Autoformatting
Plugin 'skywind3000/asyncrun.vim'

call vundle#end()            " required
filetype plugin indent on    " required

call camelcasemotion#CreateMotionMappings('<leader>')

"set nocompatible              " be iMproved, required
"filetype off                  " required

set clipboard=unnamed " 시스템 클립보드 사용

set hlsearch	" 검색어 하이라이팅
set tabstop     =2 " /t 출력시 간격
set softtabstop =2 " tab 입력시 간격
set shiftwidth  =2 " 들여쓰기, 자동 인덴트 간격
set expandtab "tab을 space로 변환

set cindent 	" C언어스타일 자동 들여쓰기
set autoindent	" 자동 들여쓰기

set number		" 라인 표시
set showcmd		" 상태바에 커맨드 표시 

set paste 		" 붙여넣기 모드 
syntax enable	" syntax highlight

" solarized color 적용 
set background=dark	
colorscheme solarized

" 이전 클리보드 붙여넣기
nmap 'p "0p

" NERDTree 토글
map <Leader>n <ESC>:NERDTree<CR>
