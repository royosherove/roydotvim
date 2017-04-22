call plug#begin()
" you will need to :
" brew tap caskroom/fonts   
" brew cask install font-hack-nerd-font
" or look here:
" https://github.com/ryanoasis/nerd-fonts#option-1-install-script
	Plug 'ryanoasis/vim-devicons'

	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'scrooloose/syntastic'
	Plug 'kien/ctrlp.vim'
	Plug 'altercation/vim-colors-solarized'
	Plug 'bling/vim-airline'
	Plug 'tpope/vim-rails'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-endwise'
	Plug 'raimondi/delimitmate'
	Plug 'rking/ag.vim'
	Plug 'sjl/gundo.vim'
call plug#end()

set nocompatible
set nowrap
set laststatus=2
set number
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
syntax enable
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

nnoremap j gj
nnoremap k gk

let mapleader = ','

nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>:source $MYVIMRC<cr>!cp $MYVIMRC $HOME/.vim<cr>
nnoremap <leader>u :GundoToggle<CR>

