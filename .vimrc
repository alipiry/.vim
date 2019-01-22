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

" Auto save 
Plug 'vim-scripts/vim-auto-save'

" ts highlighter 
Plug 'leafgarland/typescript-vim'

" tsx highlighter
Plug 'ianks/vim-tsx'

" auto-pair 
Plug 'tmsvg/pear-tree'

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
nmap <silent> <leader>f :ALEFix<cr>
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

" Fix autocomplete problem 
set completeopt+=noinsert


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

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" Git status
noremap <Leader>gs :GFiles?<CR>
" Buffer history
noremap <Leader>b :History<CR>
" Git log
noremap <Leader>gl :Commits<CR>

" open NERDTree on vim startup
let g:nerdtree_tabs_open_on_console_startup = 1

" Default rules for matching
let g:pear_tree_pairs = {
  \ '(': {'closer': ')'},
  \ '[': {'closer': ']'},
  \ '{': {'closer': '}'},
  \ "'": {'closer': "'"},
  \ '"': {'closer': '"'}
  \ }

" Pear Tree is enabled for all filetypes by default:
let g:pear_tree_ft_disabled = []

" Pair expansion is dot-repeatable by default:
let g:pear_tree_repeatable_expand = 1

" Smart pairs are disabled by default:
let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 0
let g:pear_tree_smart_backspace = 0

" If enabled, smart pair functions timeout after 60ms:
let g:pear_tree_timeout = 60

" map enter to insert mode
nmap <CR> o<Esc>

