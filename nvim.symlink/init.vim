"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
" line numbers
"
" nvim defaults courtesy of http://nerditya.com/code/guide-to-neovim/
set number
set ruler
set showcmd
set showmatch
set formatoptions+=o
set noerrorbells
set modeline
set nojoinspaces
set linespace=0

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.


set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>


" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Set default spacing prefs.
set tabstop=2 shiftwidth=2 expandtab

"" Comma is leader.
let mapleader = ","

" Dark background triggers light text
set background=dark

set wildignore+=*node_modules/*,*_build/*,*deps/*
autocmd FileType vim setlocal keywordprg=:help
autocmd FileType ruby setlocal keywordprg=ri

map <leader>qn :cnext<cr>
map <leader>qp :cprev<cr>
map <leader>qo :copen<cr>
map <leader>qc :ccl<cr>

map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>

"" Over-ride: Ctrl-p opens FZF
map <C-p> :FZF<cr>

" ctags config
set tags=.ctags;$HOME
nmap <leader>tt :execute "!/usr/local/Cellar/ctags/5.8_1/bin/ctags -R --exclude=@/Users/andrewhao/.ctagsignore -f ./.ctags ."<cr>
nmap gd <C-]>
nmap gb <C-t>
nnoremap <leader>.. :CtrlPTag<cr>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" Use ag for vim-ack
" https://github.com/mileszs/ack.vim#can-i-use-ag-the-silver-searcher-with-this
let g:ackprg = 'ag --vimgrep'

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Mouse config
set mouse=a

" Never get smaller than 80 chars
set winwidth=80

" System clipboard sharing
set clipboard=unnamed

" persistent undo
if has('persistent_undo')
  set undodir=$HOME/.undo
  set undofile
endif

let test#strategy = "vimux"

" Neoformat
" let g:neoformat_elixir_exfmt = {
"   \ 'exe': 'mix',
"   \ 'args': ['exfmt', '--stdin'],
"   \ 'stdin': 1
"   \ }

" let g:neoformat_enabled_elixir = ['exfmt']

" Neoformat on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

map <leader>F :Neoformat<cr>

" Search
map <leader>f :Grepper<cr>

" NERDTree
map <leader>nf :NERDTreeFind<cr>
map <leader>nt :NERDTree<cr>

" Rufo autoformat
" let g:rufo_auto_formatting = 1

" Commenting a la NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"Airline themes
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
"let g:airline_theme= 'gruvbox'

" Elm
let g:elm_format_autosave = 1

" Easymotion
nmap <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>w <Plug>(easymotion-bd-w)

" vim-emoji
set completefunc=emoji#complete

" ---------------------------------------------------------------------
" Installing Plugins
" - For Neovim: ~/.local/share/nvim/plugged
" ---------------------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'avdgaag/vim-phoenix'
Plug 'mileszs/ack.vim'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf'
Plug 'sbdchd/neoformat'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }
Plug 'kchmck/vim-coffee-script'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdcommenter'
Plug 'elmcast/elm-vim'
Plug 'tpope/vim-rails'
Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-rails'
Plug 'scrooloose/nerdtree'
Plug 'ruby-formatter/rufo-vim'
Plug 'rizzatti/dash.vim'
Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'junegunn/vim-emoji'
Plug 'slim-template/vim-slim'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
