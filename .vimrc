set rnu

set ruler

set autoindent
filetype plugin indent on

" set expandtab "makes each tab 4 individual spaces instead of 1 character
set tabstop=4 "Displays tabs as 4 spaces
set shiftwidth=4

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

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
