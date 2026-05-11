set nocompatible
filetype plugin indent on
scriptencoding utf-8
set fileencodings=utf-8
set encoding=utf-8

set scrolloff=3         " keep 3 lines when scrolling
set autoindent          " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

setlocal noswapfile       " don't keep a swapfile
setlocal bufhidden=unload " unload buffers once they're not visible
setlocal undolevels=1     " only one undo allowed

set backspace=indent,eol,start  " make that backspace key work the way it should
set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

" XDG base directories (inlined from former xdg.vim). Use bare `$VAR` so Vim
" expands the env var — `empty("$VAR")` tests a string literal and is never
" true. The same block lives in vimrc — keep them in sync.
if empty($XDG_CACHE_HOME)
  let $XDG_CACHE_HOME = $HOME . '/.cache'
endif
if empty($XDG_CONFIG_HOME)
  let $XDG_CONFIG_HOME = $HOME . '/.config'
endif
if empty($XDG_DATA_HOME)
  let $XDG_DATA_HOME = $HOME . '/.local/share'
endif

let $MYVIMRC = $XDG_CONFIG_HOME . '/vim/vimrc'
let g:netrw_home = $XDG_CACHE_HOME . '/vim'

set directory=$XDG_CACHE_HOME/vim/swap//
set backupdir=$XDG_CACHE_HOME/vim/backup//
set undodir=$XDG_CACHE_HOME/vim/undo//
set viminfofile=$XDG_CACHE_HOME/vim/viminfo

" " disable event bindings used by augroups for syntax highlighting, etc.
" set eventignore+=FileType
" set eventignore+=VimEnter
" set eventignore+=Syntax

" tl: toggle line wrapping
function! ToggleLineWrap()
  if &wrap
    setlocal nowrap
  else
    setlocal wrap
  endif
endfunction

nnoremap <silent><leader>tw :call ToggleLineWrap()<cr>
