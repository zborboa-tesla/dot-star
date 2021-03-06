set nocompatible

" Use a different view in the netrw directory listing.
let g:netrw_liststyle=3 " or 1

syntax on

set showmatch

" Save on blur.
au FocusLost * :silent! wall

" Return to command mode on blur.
au FocusLost * call feedkeys("\<C-\>\<C-n>")

" Add jj to exit back to normal mode.
inoremap jj <ESC>

" General
set autochdir " always switch to the current file directory
set backspace=indent,eol,start " allow backspacing over these
set iskeyword+=_,$,@,%,# " none of these are word dividers
set noerrorbells " don't make noise

" Vim UI
set cursorline " highlight current line
set incsearch " BUT do highlight as you type you search phrase
set list " display unprintable characters
set listchars=tab:>·,trail:·,extends:>,precedes:< " show tabs and trailing; works with 'list'
set number " turn on line numbers
set numberwidth=5 " We are good up to 99999 lines
set ruler " display the cursor position in the status
set scrolloff=3 " Keep X lines (top/bottom) before the horizontal window border
set showtabline=2 " always show tabbar
set title " Show the filename in the window's titlebar
set nowrap " Don't wrap long lines

" Search
set ignorecase " case insensitive by default
set smartcase " if there are caps, go case-sensitive
set hlsearch " highlight search
hi Search ctermbg=0 ctermfg=none

" Automatic Indentation
set autoindent " turn on automatic indentation (copy the indentation of the previous line)

set shiftround " round indent to a multiple of 'shiftwidth'; e.g. when at 3 spaces and tabbed go to 4, not 5
set expandtab " no real tabs
set tabstop=4 " number of spaces that a <Tab> in the file counts for
set shiftwidth=4 " number of spaces to use for each step of (auto)indent 
set softtabstop=4 " number of spaces that a <Tab> counts for while performing editing operations

au WinLeave * set nocursorline
au WinEnter * set cursorline
set ic
set nopaste

if has("gui_macvim")
  " remove scroll bars and tool bar
  set guioptions-=T " remove toolbar

  " expand width in fullscreen
  set fuoptions=maxvert,maxhorz

  " hide tab bar
  "set showtabline=0
endif

" Change indent using arrow keys
nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

"nmap <Up> kddpk
"nmap <Down> ddp
"vmap <Up> [egv
"vmap <Down> ]egv

" Execute macro q by pressing spacebar
nnoremap <Space> @q

" Remove trailing spaces on save for certain file types.
autocmd BufWritePre *.css :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
