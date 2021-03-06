" JT's .vimrc
"
" Plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'briancollins/vim-jst'
Plug 'embear/vim-localvimrc'
Plug 'kien/ctrlp.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Main behavior
filetype plugin indent on
set directory=$HOME/.vim/tmp/
set encoding=utf-8
set hidden
set laststatus=2
set list
set listchars=tab:▸\ ,
set number
set statusline=%f[%{&ff}]%y%r%m%=\ %c,%l/%L\ %P
set termencoding=utf-8
set viminfo+=n$HOME/.vim/viminfo
set wildmenu

" Jump to last position when reopening a file
autocmd BufReadPost * execute "normal! `\""

" Syntax highlighting
syntax enable
set colorcolumn=80
autocmd FileType java set colorcolumn=91 " Spring
autocmd FileType ruby set colorcolumn=100
autocmd BufReadPost * match BadWhitespace /\s\+$/
autocmd InsertEnter * match BadWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match BadWhitespace /\s\+$/

" Solarized colors w/ some tweaks
colorscheme solarized
set background=dark
set fillchars+=vert:\ ,
highlight BadWhitespace ctermbg=1
highlight Error cterm=none
highlight ErrorMsg cterm=none
highlight IncSearch ctermbg=0
highlight MatchParen ctermfg=none ctermbg=none cterm=underline
highlight NonText ctermfg=8
highlight Search ctermbg=0
highlight SpecialKey ctermfg=0 ctermbg=none
highlight StatusLine cterm=none
highlight StatusLineNC cterm=none
highlight VertSplit ctermfg=8 ctermbg=8
highlight Visual ctermbg=14 ctermfg=0
highlight WarningMsg ctermfg=3 cterm=none

" Soft wrap text files
autocmd FileType text set colorcolumn= linebreak wrap

" Indentation
set autoindent
set backspace=indent,eol,start
set copyindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Splits
set splitbelow
set splitright
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Native shortcuts/mappings
map <leader>2 :setlocal shiftwidth=2<CR>:setlocal tabstop=2<CR>:setlocal softtabstop=2<CR>
map <leader>4 :setlocal shiftwidth=4<CR>:setlocal tabstop=4<CR>:setlocal softtabstop=4<CR>
map <leader>n :nohl<CR>
map <leader>p :set paste!<CR>
map <leader>s :shell<CR>
imap <c-p> <nop>
nmap j gj
nmap k gk

" Ctrl-P settings
let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/ctrlp'
let g:ctrlp_lazy_update = 100
let g:ctrlp_max_height = 20
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_working_path_mode = 0

" NERDTree settings
map <leader>d :NERDTree<CR>
let g:NERDTreeDirArrows=0

" Local .vimrc settings
let g:localvimrc_ask = 0

" Vim JSX settings
let g:jsx_ext_required = 0
