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

" Toggle fzf in vim
set path+=**

" Set keyboard switching in Russian
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" enter current millenium
set nocompatible

" Set menu to choose files with SHIFT + TAB
set wildmenu

" Toggle spell check
nnoremap <F5> :setlocal spell! spelllang=ru_ru,en_us<CR>
inoremap <F5> <C-o>:setlocal spell! spelllang=ru_ru,en_us<CR>

" Toggle relative line numbers and regular numbers
nnoremap <F6> :set relativenumber!<CR>
inoremap <F6> <C-o>:set relativenumber!<CR>

" Toggle line numbers 
nnoremap <F7> :set number!<CR>
inoremap <F7> <C-o>:set number!<CR>

" Autocompile R markdown
autocmd Filetype rmd map <F4> :!echo<space>"require(markdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" syntax is always on
syntax on
filetype plugin on

set autoindent
set hls ic
let python_highlight_all = 1

" map space to control f (to scroll pages down)
map <space> <C-f>

" insert html template
nnoremap ,ht :-1read $HOME/.vim/template/default.html<CR>13jfCC

" open and switch tabs
nnoremap tn :tabnew<space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" tab spaces to 4
set shiftwidth=4 softtabstop=4 expandtab

" set textwidth=79 for Python coding PEP8 rules
set textwidth=79

" set double quotes & parentheses
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap < <><left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap {P {%<space><space>%}<left><left><left>

" mouse click changes cursor position
" set mouse=a
