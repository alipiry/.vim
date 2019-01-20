set shell=bash

call plug#begin()
" helper
Plug 'tpope/vim-sensible'
" nertree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" fzf
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" theme 
Plug 'joshdick/onedark.vim'
"syntax highlight
Plug 'sheerun/vim-polyglot'

" footer 
Plug 'vim-airline/vim-airline'

" git marks
Plug 'airblade/vim-gitgutter'

" comment manager
Plug 'tpope/vim-commentary'

" surround
Plug 'tpope/vim-surround'

" liniting 
Plug 'w0rp/ale'

" js highlighter
Plug 'pangloss/vim-javascript'

" git footbar
Plug 'tpope/vim-fugitive'
call plug#end()

if (empty($TMUX))
    if (has("nvim"))
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
     endif
     
  if (has("termguicolors"))
    set termguicolors
   endif
endif

syntax enable

colorscheme onedark

let g:airline_theme='onedark'

" nerdtree shortcut
map <C-n> <plug>NERDTreeTabsToggle<CR>

" ctrl-s shortcut
noremap <silent> <C-S> :update<CR>

" fzf 
noremap <silent> <C-f> :FZF<CR>

" force quit
noremap <silent> <C-w><C-q> :q!<CR>

" comment shortcut - C-_
nmap <C-_> <Plug>CommentaryLine

" ALE key binding

nmap <silent> <leader>fa :ALEFix<cr>
nmap <silent> <leader>gd :ALEGoToDefinitionInVSplit<cr>

set number
set ruler
filetype plugin indent on
set tabstop=2
set shiftwidth=2

" gitgutter updatetime 
set updatetime=100

" no visual bell & flash
set vb t_vb=

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Plugins

let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

let g:javascript_plugin_flow = 1

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
  \   'javascript': ['eslint', 'flow-language-server'],
  \   'javascript.jsx': ['eslint', 'flow-language-server'],
  \}

let g:ale_fixers = {
  \   'javascript': ['prettier', 'eslint'],
  \   'javascript.jsx': ['prettier', 'eslint'],
  \   'typescript': ['tslint'],
  \   'css': ['prettier'],
  \}

