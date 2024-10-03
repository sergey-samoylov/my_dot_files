" Toggle kj in insert mode to act like <ESC>
inoremap kj <esc>

" Open .vim/vimrc the quick way
nnoremap ,av :tabnew $MYVIMRC<CR>

" Back one file
nnoremap <bs> <C-o>

" Toggle spell check
nnoremap <F5> :setlocal spell! spelllang=ru_ru,en_us<CR>
inoremap <F5> <C-o>:setlocal spell! spelllang=ru_ru,en_us<CR>

" Toggle relative line numbers and regular numbers
nnoremap <F6> :set relativenumber!<CR>
inoremap <F6> <C-o>:set relativenumber!<CR>

" Toggle line numbers
nnoremap <F7> :set number!<CR>
inoremap <F7> <C-o>:set number!<CR>

" Clipboard paste
nmap rx :r !wl-paste<CR>

" Remove trailing whitespaces in text
nmap r<space> :%s/\s\+$//<CR>

" Abbreviations
iabbrev div <div><CR><CR></div><esc>ki<tab>

" move one pane right using CTRL+L
nnoremap <C-L> <C-W><C-L>

" move one pane left using CTRL+H
nnoremap <C-H> <C-W><C-H>
" CTRL+W+SHIFT+T - move splited window to tab !!! https://www.youtube.com/watch?v=PcAdooABpEg
"

" map space to control f (to scroll pages down)
map <space> <C-f>

" insert formated date
nnoremap ,d i<C-R>=strftime("%Y-%m-%d")<CR>

" open and switch tabs
nnoremap tn :tabnew<space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" close all tabs but current
nnoremap to :tabo<CR>

" Capitalize all words in a line = nice for headings in English
nnoremap ,c :s/\<./\u&/g<CR>

" swap words -- one two to two one
nnoremap gw dawwP<CR>
nnoremap gW dawbP<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" nnoremap <space> zA

nnoremap "" viw<esc>a"<esc>bi"<esc>lel
nnoremap """ ^i"""<esc>A"""<esc>
" set double quotes & parentheses
" inoremap (( (<Esc>ea)
" inoremap ( ()<left>
" inoremap { {}<left>
" inoremap [ []<left>
" inoremap < <><left>
" inoremap ' ''<left>
" inoremap {P {%<space><space>%}<left><left><left>
" inoremap DV <div></div><left><left><left><left><left><left><CR><CR><up>

" Popup menus keymaps - change color scheme
nnoremap <F1> :source $HOME/.vim/scripts/color_theme_menu.vim<CR>
