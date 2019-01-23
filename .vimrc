" BSD 3-Clause License

" Copyright (c) 2019, Ali Piry
" All rights reserved.

" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are met:

" * Redistributions of source code must retain the above copyright notice, this
  " list of conditions and the following disclaimer.

" * Redistributions in binary form must reproduce the above copyright notice,
 " this list of conditions and the following disclaimer in the documentation
 " and/or other materials provided with the distribution.

" * Neither the name of the copyright holder nor the names of its
 " contributors may be used to endorse or promote products derived from
 " this software without specific prior written permission.

" THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
" IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
" DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
" FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
" DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
" SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
" CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
" OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
" OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

" <================================ plugin manager ================================>  
set shell=bash
call plug#begin()
" helper
Plug 'tpope/vim-sensible'
" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" fzf
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" syntax highlight
Plug 'sheerun/vim-polyglot'
" footer
Plug 'vim-airline/vim-airline'
" git helper
Plug 'airblade/vim-gitgutter'
" comment manager
Plug 'tpope/vim-commentary'
" surround
Plug 'tpope/vim-surround'
" liniting
Plug 'w0rp/ale'
" js highlighter
Plug 'pangloss/vim-javascript'
" git plugin
Plug 'tpope/vim-fugitive'
" Auto save
Plug 'vim-scripts/vim-auto-save'
" ts highlighter
Plug 'leafgarland/typescript-vim'
" auto-pair
Plug 'tmsvg/pear-tree'
" theme
Plug 'morhetz/gruvbox'
call plug#end()
" <================================ plugin manager ================================>

" <================================ vim config ================================>
syntax enable

" Enable filetype plugin
filetype plugin on
filetype indent on

" Save undos after file closes
set undofile
" where to save undo histories
set undodir=$HOME/.vim/undo
" How many undos
set undolevels=1000
" number of lines to save for undo
set undoreload=10000
" Set to auto read when a file is changed from the outside
set autoread
" Show line numbers
set number
" Show row and column ruler information
set ruler
" Wrap lines
set wrap
" Break lines at word
set linebreak
" Wrap-broken line prefix
set showbreak=+++
" Highlight matching brace
set showmatch
" Enable spell-checking
set spell
" Use visual bell (no beeping)
set visualbell
" Highlight all search results
set hlsearch
" Enable smart-case search
set smartcase
" Always case-insensitive
set ignorecase
" Searches for strings incrementally
set incsearch
" Auto-indent new lines
set autoindent
" Number of auto-indent spaces
set shiftwidth=2
" Enable smart-indent
set smartindent
" Enable smart-tabs
set smarttab
" Number of spaces per Tab
set softtabstop=2
set tabstop=2
" Backspace behavior
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
" Don't redraw while executing macros
set lazyredraw
" For regular expressions
set magic
" How many tenths of a second to blink when matching brackets
set mat=2
" Backup off
set nobackup
set nowb
set noswapfile
" gitgutter updatetime
set updatetime=100
" autocomplete - ALE
let g:ale_completion_enabled = 1
set completeopt+=noinsert
" Always show the status line
set laststatus=2
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac"
" show extra characters
set list
" can select with mouse
set mouse=a
" <================================ vim config ================================>

" <================================ theme config ================================>
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
" <================================ theme config ================================>

" <================================ key bindings  ================================>
" nerdtree shortcut
map <C-n> <Plug>NERDTreeTabsToggle<CR>
" global search shortcut
noremap <C-S> :Ag<CR>
" FZF in Current dir
noremap <C-f> :FZF<CR>
" force quit
noremap <C-w><C-q> :q!<CR>
" comment shortcut - \/
nmap <Leader>/ <Plug>CommentaryLine
" ALE key binding
nmap <Leader>f :ALEFix<CR>
nmap <Leader>gd :ALEGoToDefinitionInVSplit<CR>
" Git status
noremap <Leader>gs :GFiles?<CR>
" Git log
noremap <Leader>gl :Commits<CR>
" Git checkout file
noremap <Leader>gch :Gread <CR>
" Git add file
noremap <Leader>ga :Gwrite <CR>
" Git commit 
noremap <Leader>gco :Gcommit <CR>
" Git diff
noremap <Leader>df :Gdiff <CR>
" Git push
noremap <Leader>gps :Gpush<CR>
" Git pull
noremap <Leader>gpl :Gpull<CR>
" Buffer history
noremap <Leader>b :History<CR>
" map enter to insert mode
nmap <CR> i
" map backspace
nmap <BS> X
" create tab, switch to next tab
noremap <Leader>t :tabnew <CR>
noremap <Leader>n :tabnext <CR>
" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null"
" <================================ key bindings  ================================>

" <================================ Plugins options ================================>
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

let g:javascript_plugin_flow = 1

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
  \ 'javascript': ['eslint', 'flow-language-server'],
  \ 'javascript.jsx': ['eslint', 'flow-language-server'],
  \ }

let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint'],
  \ 'javascript.jsx': ['prettier', 'eslint'],
  \ 'typescript': ['tslint'],
  \ 'css': ['prettier'],
  \ }

" enable AutoSave on Vim startup
let g:auto_save = 1
" do not change the 'updatetime' option
let g:auto_save_no_updatetime = 1
" do not save while in insert mode
let g:auto_save_in_insert_mode = 0

" open NERDTree on vim startup
" let g:nerdtree_tabs_open_on_console_startup = 1

" Default rules for matching
let g:pear_tree_pairs = {
  \ '(': {'closer': ')'},
  \ '[': {'closer': ']'},
  \ '{': {'closer': '}'},
  \ "'": {'closer': "'"},
  \ '"': {'closer': '"'},
  \ "/*": {'closer': "*/"},
  \ "<!--": {'closer': "-->"},
  \}

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
" FZF finds hidden files
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
" <================================ Plugins options ================================>
