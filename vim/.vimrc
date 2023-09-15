
"#    ___                  ____  _
"#   /   | ___  ____ ___  / __ \(_)
"#  / /| |/ _ \/ __ `__ \/ /_/ / /
"# / ___ /  __/ / / / / / ____/ /
"#/_/  |_\___/_/ /_/ /_/_/   /_/
"#
"# Filename:     .vimrc
"# Github:       https://github.com/AemPi/Linux_Configs.git
"# Maintainer:   Markus Pröpper (AemPi)
"#########################################################

" Enable Syntax Highlighting and Line Numbers
set number
syntax enable

" highlight matching [{()}]
set showmatch

" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" enable Backspace
set bs=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Always show the status line
set laststatus=2

" Some settings to enable the theme:
:color pablo
set background=dark
let g:solarized_termcolors = 256  " New line!!

" Git Branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
" Git Statusline
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=red
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=green
hi statusline guifg=grey guibg=#8fbfdc ctermfg=black ctermbg=cyan

let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}


set noshowmode
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode"
set statusline+=%2*\[%{StatuslineGit()}]                 " Git Status
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%=                                       " Right Side"
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%3*\│                                    " Separator"
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %n\                                 " Buffer number

" Note that you must define your custom highlight groups after any :colorscheme in your vimrc otherwise your highlight groups will be cleared when :colorscheme is called.
hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

" ignore case if search pattern is all lowercase,
" case-sensitive otherwise
set smartcase

" ignore case when searching
set ignorecase

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
" Fast quit
nmap <leader>q :q!<cr>
" Begin of Line
nmap <leader>b ^
" End of Line
nmap <leader>e $ 


" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" show search matches as you type
set incsearch

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Better command-line completion
set wildmenu
set wildmode=longest:full

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
