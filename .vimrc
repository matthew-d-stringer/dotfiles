set rnu

set ruler

set autoindent
filetype plugin on
filetype plugin indent on

" inoremap nn<SPACE> <ESC>/<++><ENTER>"_c4l

set expandtab "makes each tab individual spaces instead of 1 character
set tabstop=2 "Displays tabs as 2 spaces
set smarttab
set shiftwidth=2

" 80 character mark
highlight ColorColumn ctermbg=blue
call matchadd('colorColumn', '\%80v', 80)
" /80 character mark

set nocompatible

syntax enable
filetype plugin on

map <C-h> <C-w>h
map <C-J> <C-w>j
map <C-K> <C-w>k
map <C-l> <C-w>l

nnoremap <C-F> <nop>

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

" $/^ doesn't do anything
 nnoremap $ <nop>
 nnoremap ^ <nop>

" change change window
"nnoremap  <C-W>

autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTree<CR>

" Adding ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"fixinu tmux? Yeah fixing tmux lol
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
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'ejs'] }
call plug#end()

"Pathogen
execute pathogen#infect()

"Vundle set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'mattn/emmet-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'alvan/vim-closetag'
Plugin 'jvanja/vim-bootstrap4-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.ejs'
au BufNewFile,BufRead *.ejs set filetype=html.ejs

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
