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

" Set incomplete command show
set showcmd

" Toggle spell check
nnoremap <F5> :setlocal spell! spelllang=ru_ru,en_us<CR>
inoremap <F5> <C-o>:setlocal spell! spelllang=ru_ru,en_us<CR>

" Toggle relative line numbers and regular numbers
set relativenumber
nnoremap <F6> :set relativenumber!<CR>
inoremap <F6> <C-o>:set relativenumber!<CR>

" Toggle line numbers 
set number
nnoremap <F7> :set number!<CR>
inoremap <F7> <C-o>:set number!<CR>

" Autoinsert text in html
autocmd FileType html inoremap ;d <div></div><Esc>FdT>i
autocmd FileType html inoremap ;p <p></p><Esc>FpT>i
autocmd FileType html inoremap ;5 {%  %}<Esc>F%hi

" Autocompile R markdown
autocmd Filetype rmd map <F4> :!echo<space>"require(markdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" syntax is always on
syntax on
filetype plugin on

set autoindent
set hls ic
let python_highlight_all = 1

" move one pane right using CTRL+L
nnoremap <C-L> <C-W><C-L>

" move one pane left using CTRL+H
nnoremap <C-H> <C-W><C-H>
" CTRL+W+SHIFT+T - move splited window to tab !!! https://www.youtube.com/watch?v=PcAdooABpEg
"

" map space to control f (to scroll pages down)
map <space> <C-f>

" insert html template
nnoremap ,ht :-1read $HOME/.vim/template/default.html<CR>13jfCC

" insert Python start lines
nnoremap ,py :-1read $HOME/.vim/template/py<CR>2ji

" insert Python rich imports
nnoremap ,ri :-1read $HOME/.vim/template/rich<CR>6ji

" open and switch tabs
nnoremap tn :tabnew<space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
" close all tabs but current
nnoremap to :tabo<CR>

" swap words -- one two to two one
nnoremap gw dawwP<CR>
nnoremap gW dawbP<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" tab spaces to 4
set shiftwidth=4 softtabstop=4 expandtab

" set textwidth=79 for Python coding PEP8 rules
set textwidth=79
" set cc=80

" set double quotes & parentheses
" inoremap (( (<Esc>ea)
" inoremap ( ()<left>
" inoremap { {}<left>
" inoremap [ []<left>
" inoremap < <><left>
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap {P {%<space><space>%}<left><left><left>
" inoremap DV <div></div><left><left><left><left><left><left><CR><CR><up>

" mouse click changes cursor position
" set mouse=a
