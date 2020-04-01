set rnu

set ruler

set autoindent
filetype plugin indent on

" set expandtab "makes each tab 4 individual spaces instead of 1 character
set tabstop=2 "Displays tabs as 4 spaces
set shiftwidth=2

" 80 character mark
highlight ColorColumn ctermbg=blue
call matchadd('colorColumn', '\%80v', 80)
" /80 character mark

set nocompatible

syntax enable
filetype plugin on

" Fuzzy file finder
set path+=**
set wildmenu
" /Fuzzy file finder

"keep cursor in the middle all the time :)
"nnoremap k kzz
"nnoremap j jzz
"nnoremap p pzz 
"nnoremap P Pzz 
"nnoremap G Gzz
"nnoremap x xzz
"inoremap <ESC> <ESC>zz
"nnoremap <ENTER> <ENTER>zz
"inoremap <ENTER> <ENTER><ESC>zzi
"nnoremap o o<ESC>zza
"nnoremap O O<ESC>zza
"nnoremap a a<ESC>zza

" move to beginning/end of line
 nnoremap B ^
 nnoremap E $
"
" " $/^ doesn't do anything
 nnoremap $ <nop>
 nnoremap ^ <nop>

autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTree<CR>

"fixing tmux? Yeah fixing tmux lol
set background=dark
set t_Co=256

"Plugin Managers

"Vim plug
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

"Pathogen
execute pathogen#infect()

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
