"Prerequisites to run this vimrc
"sudo apt-get install silversearcher-ag
"sudo apt-get install ctags

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/tpope/vim-sensible.git'
	Plug 'https://github.com/scrooloose/nerdtree'
	Plug 'https://github.com/tomasr/molokai'
	Plug 'https://github.com/sickill/vim-monokai'
	Plug 'https://github.com/tpope/vim-surround.git'
    Plug 'https://github.com/ctrlpvim/ctrlp.vim'
	Plug 'https://github.com/mileszs/ack.vim.git'
	Plug 'https://github.com/jwalton512/vim-blade.git'
	Plug 'https://github.com/terryma/vim-multiple-cursors'

call plug#end()

""""""PLUGIN SETTINGS""""""
"Ack.vim : ack to ag
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

"Remapping
map <C-m> :NERDTreeToggle<CR>
"Vim settings
syntax on
set autoindent
set smartindent
set paste
set number
set encoding=utf-8
set incsearch
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
colorscheme monokai
