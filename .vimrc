call plug#begin()
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
set laststatus=2
set number
syntax enable


let mapleader = ','

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>:source $MYVIMRC<cr>
