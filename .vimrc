execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2

set colorcolumn=80
"set wrapmargin=80

"no idea what there are but they make 'vapRETgq' select 
"the current paragraph and reformat it
set formatoptions=1crql 

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
  \ 'dir':  '\v[\/](usr|target|javascripts|dist|build|_build)$',
  \ 'file': '\v\.(zip|jar|class|exe|o|hi|so|dll|min\.js)$'
  \ }

set number
set relativenumber 

set smartcase

":au FocusLost * :set number
":au FocusGained * :set relativenumber
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

" configure browser for haskell_doc.vim
let g:haddock_browser = "firefox"


"Set up tab handling. Unfortunately, ctrl tab doesn't work 
""over a terminal.
set showtabline=2               " File tabs allways visible
:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:map <C-S-tab> :tabprevious<cr>
:map <C-tab> :tabnext<cr>
:map <C-w> :tabclose<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i

"Ctrl S saves - oh wait, this doesn't work on a terminal either.
:nmap <C-s> :w<cr>
:map <C-s> :w<cr>i

let mapleader = " "
noremap <Leader>gc /\(class\|object\|trait\) 
noremap <Leader>gi gg /import<cr>  
nnoremap <silent> <Leader>t :NERDTreeFocus<CR>

set showcmd


noremap ; :
"since I don't actually use semicolon at all.. noremap : ;

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>b :buffers<cr>
map <leader>ct :!ctags -R .<cr>
map <leader>m :make<cr>
map <leader><tab> :tabnext<cr>
map <leader><S-tab> :tabprevious<cr>
"scroll by rows, not lines
nmap j gj
nmap k gk



nnoremap <leader>n :setlocal number!<CR>:setlocal relativenumber!<CR>

nnoremap <Leader>q :q<CR>

"This stuff comes from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity"

" * I search things usual way using /something
" * I hit cs, replace first match, and hit <Esc>
" * I hit n.n.n.n.n. reviewing and replacing all matches

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"leader-y and leader-p copy and paste to system clipboard"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"leader-o opens with ctrlp"
noremap <Leader>o :tabnew<cr>:CtrlP<cr>  

"leader-w saves"
nnoremap <Leader>w :w<CR>

"leader-leader enters visual line mode"
nmap <Leader><Leader> V


" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


