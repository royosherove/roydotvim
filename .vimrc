let mapleader = ','

call plug#begin()
" for dev icons you will need to :
" brew tap caskroom/fonts   
" brew cask install font-hack-nerd-font
" or look here:
" https://github.com/ryanoasis/nerd-fonts#option-1-install-script
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-sensible'

Plug 'mxw/vim-jsx'

"    Plug 'Valloric/YouCompleteMe'
"    Plug 'sirver/ultisnips'

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Completions
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'

"File Explorers
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-vinegar'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'easymotion/vim-easymotion'

"Language and syntax
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'sjl/gundo.vim'

Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
call plug#end()

let g:jsx_ext_required = 0
let g:closetag_filenames = "*.xml,*.js,*.html,*.xhtml,*.phtml"

set nocompatible
set updatetime=250
set nowrap
set laststatus=2
set visualbell
set number
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin on
syntax enable
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <esc><esc> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" CtrlP settings
nnoremap <leader><leader> :CtrlP<cr>
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" move even on wrapped lines
"nnoremap j gj
"nnoremap k gk


"NERDTree customization
nnoremap <c-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['node_modules']

map mm <Plug>(easymotion-prefix)
map mmm <Plug>(easymotion-bd-w)
map MMM <Plug>(easymotion-bd-b)

"Edit special files
"source currne tfile in shell
nnoremap <leader>sf !source %<cr> 

" Ctrl-E to switch between 2 last buffers
nnoremap <C-E> :b#<CR>

"move text after cursor to new line
nnoremap <C-j> i<cr><esc>w

"auto format file
nnoremap <leader>f ggVG=<C-o><C-o>

inoremap <leader>m <esc>:w<cr>
nnoremap <leader>m :w<cr>
"vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>:source $MYVIMRC<cr>!cp $MYVIMRC $HOME/.vim<cr>

"zshrc
nnoremap <leader>ez :vsplit $HOME/.zshrc<cr>
nnoremap <leader>zwq :wq<cr>!source $HOME/.zshrc<cr>

nnoremap <leader>u :GundoToggle<CR>

