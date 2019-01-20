call plug#begin()
" theme
Plug 'morhetz/gruvbox'
" footer
Plug 'itchyny/lightline.vim'
" helper
Plug 'tpope/vim-sensible'
" nertree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

syntax on 
" set theme
colorscheme gruvbox
set background=dark

" nerdtree shortcut
map <C-n> <plug>NERDTreeTabsToggle<CR>

" ctrl-s shortcut
noremap <silent> <C-S> :update<CR>

" fzf 
noremap <silent> <C-f> :FZF<CR>

" force quit
noremap <silent> <C-w><C-q> :q!<CR>

set number
set ruler
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
