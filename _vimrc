filetype off "must be off to call pathogen bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on "add filetype on top
filetype plugin indent on 
syntax enable "always keep syntax highlighting on
set background=light
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme blue
set title "put title on top of vim
set ruler "line nums
set history=1000 "increase buffer history
set number
set wildmode=list:longest "bashlike file switch
set expandtab
set autoindent  "must be turned on for set lisp
set smartindent  "replaced by cindent
set cindent
set lisp
setlocal tabstop=4 "tab=4spaces
setlocal shiftwidth=4
setlocal softtabstop=0
set ignorecase "ignore case in search unless capitalized
set smartcase
set hlsearch "highlight search
set incsearch "dynamic search
set backspace=indent,eol,start "backspace how we would expect
set foldmethod=indent "enable code folding
set foldlevel=99
"quicker movement between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
let mapleader=","
map <leader>todo <Plug>TaskList 
map <leader>undo :GundoToggle<CR>
map <leader>v :sp .vimrc
map <leader>V :source .vimrc
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>pep8'
let g:slime_target = "screen"
au FileType python set omnifunc=pythoncomplete#Complete "tab completion 
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview "python documentation on pw
set runtimepath^=.vim/bundle/ctrlp.vim
au BufRead,BufNewFile *.vb set filetype=vb

if has("win32") 
  set shell=powershell
  set shellcmdflag=-command
  set ff=dos
else
  set shell=/bin/sh
  set ff=unix
endif
