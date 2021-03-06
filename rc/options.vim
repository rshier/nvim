" Eye
colorscheme gruvbox
set background=dark
set cursorline
set number
set relativenumber
set noshowmode
set signcolumn=yes
set conceallevel=2 concealcursor=niv
set colorcolumn=79

" Search
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch
set wrapscan
set showmatch

" Line
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set smartindent
set shiftround
set textwidth=80
set wrapscan

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" Turn down a long line appointed in 'breakat'
set linebreak
set showbreak=\
set breakat=\ \	;:,!?
set whichwrap+=h,l,<,>,[,],b,s,~
if exists('+breakindent')
  set breakindent
  set wrap
else
  set nowrap
endif

" Display candidate supplement.
set nowildmenu
set wildmode=list:longest,full

" Completion setting.
set completeopt=menuone
set complete=.
set pumheight=20

" Window
set splitbelow
set splitright
set winwidth=30
set winheight=1
set noequalalways
set previewheight=8
set helpheight=12

" Disable modelines
set modelines=0
set nomodeline
autocmd MyAutoCmd BufRead,BufWritePost *.txt setlocal modelines=5 modeline

" Disable paste.
autocmd MyAutoCmd InsertLeave *
      \ if &paste | setlocal nopaste | echo 'nopaste' | endif |
      \ if &l:diff | diffupdate | endif

" Distinguish pane
autocmd MyAutoCmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
autocmd MyAutoCmd WinLeave * setlocal nocursorline

" Disable completion message
set noshowmode
try
  set shortmess+=c
catch /^Vim\%((\a\+)\)\=:E539: Illegal character/
  autocmd MyAutoCmd VimEnter *
        \ highlight ModeMsg guifg=bg guibg=bg |
        \ highlight Question guifg=bg guibg=bg
endtry
