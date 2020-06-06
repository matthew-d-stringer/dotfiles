syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set rnu nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir/
set undofile
set incsearch
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

noremap <leader>h :wincmd h <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>k :wincmd k <CR>
noremap <leader>l :wincmd l <CR>
noremap <leader>n :wincmd v <CR>
noremap <leader>u :UndotreeToggle<CR>
noremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <CR>
noremap <leader>ps :Rg<Space>

" YCM
noremap <silent> <leader>gd :YcmCompleter Goto<CR>
noremap <silent> <leader>gf :YcmCompleter FixIt<CR>
