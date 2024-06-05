" Reference chart of values:
" Ps = 0 -> blinking block
" Ps = 1 -> blinking block (default)
" Ps = 2 -> steady block
" Ps = 3 -> blinking underline
" Ps = 4 -> steady underline
" Ps = 5 -> blinking bar (xterm)
" Ps = 6 -> steady bar (xterm)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" hide tilda characters on empty lines
let &fillchars ..= ',eob: '

" searches for tags in current dir and in all subdirs
set tags=./tags,./*/tags

" Toggle fzf in vim
set path+=**

" Set keyboard switching in Russian
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" enter current millenium
set nocompatible

"swich off matching parenthesis
let g:loaded_matchparen=1

" Set menu to choose files with SHIFT + TAB
set wildmenu

" Open splits right & bottom
set splitright
set splitbelow

" Set incomplete command show
set showcmd

set relativenumber
set number

" syntax is always on
syntax on
filetype plugin on

set autoindent
set hls ic
let python_highlight_all = 1

" tab spaces to 4
set shiftwidth=4 softtabstop=4 expandtab

" Disable search highlighting
set nohlsearch

" Disable swap files
set noswapfile

" set textwidth=79 for Python coding PEP8 rules
set textwidth=79
" set cc=80

" set fold by indent
" set foldmethod=indent
" set fold unfold with space

" mouse click changes cursor position
" set mouse=a

" Tweaks for file browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Colorschemes settings
let g:tokyonight_transparent_background = 1
let g:tokyonight_enable_italic = 1
