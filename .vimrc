execute pathogen#infect()
syntax on
filetype plugin indent on

"for minibufexplorer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1


let g:neocomplcache_enable_at_startup = 1
" Set no max file limit
 let g:ctrlp_max_files = 0
" Search from current directory instead of project root
 let g:ctrlp_working_path_mode = 0

" Ignore these directories
set wildignore+=*/target/**
set wildignore+=*/RPMS/**
set smartcase

set ignorecase

let g:ctrlp_custom_ignore = {
  \ 'dir':  '(^/usr/|/target/|/javascripts/)',
  \ 'file': '\v\.(zip|jar|class|exe|so|dll|min\.js)$'
  \ }

set number
set relativenumber 

set smartcase

":au FocusLost * :set number
":au FocusGained * :set relativenumber
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

"Set up tab handling. Unfortunately, ctrl tab doesn't work 
""over a terminal.
set showtabline=2               " File tabs allways visible
:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:map <C-t> :tabnew<cr>
:map <C-S-tab> :tabprevious<cr>
:map <C-tab> :tabnext<cr>
:map <C-w> :tabclose<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i
:imap <C-t> <ESC>:tabnew<cr>

"Ctrl S saves - oh wait, this doesn't work on a terminal either.
:nmap <C-s> :w<cr>
:map <C-s> :w<cr>i

let mapleader = " "
noremap <Leader>gc /\(class\|object\|trait\) 
noremap <Leader>gi gg /import<cr>  
noremap <Leader>o :tabnew<cr>:e  
nnoremap <silent> <Leader>t :NERDTreeFocus<CR>

set showcmd


noremap ; :
"since I don't actually use semicolon at all.. noremap : ;

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
