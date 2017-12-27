
call plug#begin('~/.vim/plugged')

"================== Enhancement ==================
" NERDTree
Plug 'scrooloose/nerdtree'

" NERDTree commenter
Plug 'scrooloose/nerdcommenter'

" 상태바
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" git
Plug 'tpope/vim-fugitive'

" find file
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" Close NERDTree window
let g:ctrlp_dont_split = 'NERD'

"================== Theme ==================
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'


"================== Coding ==================
" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" deoplete ternjs 
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" 자동 괄호 완성
Plug 'Raimondi/delimitMate'

" Camel Case 모션
Plug 'bkad/camelcasemotion'

" syntax check
Plug 'scrooloose/syntastic'


"================== Javascript ==================
" javascript 문법 하이라이팅 
Plug 'jelera/vim-javascript-syntax'

" typescript 문법
Plug 'leafgarland/typescript-vim'

" javascript 인덴트 
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'


" reactjs syntax
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" emmet
" Plug 'mattn/emmet-vim'

"let g:user_emmet_leader_key='<Tab>'
"let g:user_emmet_settings = {
"  \  'javascript.jsx' : {
"    \      'extends' : 'js',
"    \  },
"\  }

call plug#end()


set clipboard=unnamed " 시스템 클립보드 사용

set hlsearch	" 검색어 하이라이팅
set tabstop     =2 " /t 출력시 간격
set softtabstop =2 " tab 입력시 간격
set shiftwidth  =2 " 들여쓰기, 자동 인덴트 간격
set expandtab "tab을 space로 변환

set cindent 	" C언어스타일 자동 들여쓰기
set autoindent	" 자동 들여쓰기
set smartindent "똑똑한 들여쓰기?

set number		" 라인 표시
set showcmd		" 상태바에 커맨드 표시 

"set paste 		" 붙여넣기 모드 
syntax enable	" syntax highlight


" Or if you have Neovim >= 0.1.5
"if (has("termguicolors"))
" set termguicolors
"endif
"syntax enable
"colorscheme OceanicNext

" solarized color 적용 
set background=dark	
colorscheme solarized

" 이전 클리보드 붙여넣기
nmap 'p "0p

" NERDTree 토글
map <Leader>n <ESC>:NERDTree<CR> 
