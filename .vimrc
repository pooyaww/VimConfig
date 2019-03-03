set nocompatible
set term=xterm-256color

if filereadable(".project.vim")
    source .project.vim
endif

set rtp+=~/.fzf

filetype plugin indent on
syntax on

let g:ale_completion_enabled = 1 " Enable completion where available.

execute pathogen#infect()

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
let g:gruvbox_number_column='bg1'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox
set background=dark

set expandtab
set autoindent
set shiftround
set backspace=indent,eol,start
set ts=4
set softtabstop=4
set shiftwidth=4
set number               " always show line numbers
set showmatch            " set show matching parenthesis
set ignorecase           " ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase,
                         " case-sensitive otherwise
set smarttab             " insert tabs on the start of a line according to
                         " shiftwidth, not tabsto
set hlsearch             " highlight search terms
set incsearch            " show search matches as you type
set hidden
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell           " don't beep
set noerrorbells         " don't beep
let g:airline_powerline_fonts = 1 " usable only if powerline fonts are installed
let g:indentLine_enabled = 0      " can be toggled by :IndentLinesToggle

set cursorline
hi cursorline cterm=none term=none
set nobackup             " Turn backup off as we use git
set nowb
set noswapfile
set ai                  " Auto indent
set si                  " Smart indent
set wrap                " Wrap lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing \ss will toggle and untoggle spell checking
 map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
 map <leader>sn ]s
 map <leader>sp [s
 map <leader>sa zg
 map <leader>s? z=
