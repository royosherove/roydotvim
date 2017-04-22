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
call plug#end()

set nocompatible
set nowrap
set laststatus=2
set number
syntax enable


let mapleader = ','

nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>:source $MYVIMRC<cr>
