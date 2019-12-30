" ## NAME: ~/.vimrc
" ## delete unwanted spaces for all the file
" ## :%s/\s\+$//
set nocompatible

" ## disable startup message
set shortmess+=I

set title
set ls=2
syntax on
set ruler
" ## set relativenumber

" ## show path= :set path?
" ## search down into subfolders
" ## Provides tab-completion for all file-related tasks
set path+=**
" ## Display all matching files when we tab complete
set wildmenu

colorscheme desert
set background=dark

set autoread      " auto refresh files
" ## enable full/long shell autocomplete functions for completing
" ## filenames
set wildmode=longest,list

set history=1000         " remember more commands and search history
set undolevels=1000      " use many levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set showmatch		" Show matching brackets.
" set ignorecase  " Do case insensitive matching
" set showcmd     " Show (partial) command in status line.
set hlsearch      " print coincidences
set autoindent    " auto indent on
set tabstop=3     " tab are 3 spaces
set shiftwidth=3  " indent are 3 spaces
set cindent       " indent on

set nobackup      " no backup files
set nowritebackup " disable backup file while editing
set noswapfile    " no swap files

filetype plugin on
filetype plugin indent on

" ## shortcuts
" ## C is Ctrl ;; S is Shift
nmap <silent> <leader>hh :set invhlsearch<CR>
nmap <silent> <leader>ll :set invlist<CR>
nmap <silent> <leader>nn :set invnumber<CR>
nmap <silent> <leader>ii :set invrelativenumber<CR>

"nmap <C-N> : set invnumber<CR>
"nmap <C-S-N> : set invrelativenumber<CR>
nmap <C-S-P> : set paste<CR>

" ## removing all unwanted spaces for all the file
nmap <silent> <leader>ss :%s/\s\+$//<CR>

" ##The <Leader> key is mapped to \ by default.
" ## This replaces :tabnew which I used to bind to this mapping
nmap <leader>ee :enew<cr>
" ## Move to the next buffer
nmap <leader>k :bnext<CR>
" ## Move to the previous buffer
nmap <leader>j :bprevious<CR>
" ## Close the current buffer and move to the previous one
" ## This replicates the idea of closing a tab
nmap <leader>b :bp <BAR> bd #<CR>
" ## Show all open buffers and their status
nmap <silent> <leader>l :ls<CR>

" ## moving between tabs
nmap <leader>t :tabnew<CR>
" ## move to the previous tab
nmap <silent> <leader>i :tabprevious<CR>
" ## move to the next tab
nmap <silent> <leader>o :tabnext<CR>
" ## close tab
nmap <silent> <leader>c :tabclose<CR>

" ## Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" ## Tweaks for browsing
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view

" ## Format for the status line
hi StatusLine ctermbg=Black ctermfg=DarkRed
" ## tabs
hi TabLineFill ctermfg=Black ctermbg=DarkRed
hi TabLine ctermfg=DarkRed ctermbg=Black
hi TabLineSel ctermfg=DarkRed ctermbg=Black
