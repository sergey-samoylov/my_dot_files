" Auto vim
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python set textwidth=79
    autocmd VimEnter * source $HOME/.vim/scripts/start.vim " File with start function
    " autocmd BufWinEnter * call Start()
    autocmd VimEnter * source $HOME/.vim/scripts/complete.vim " File with complete function
    " autocmd BufWinEnter * call Complete()
    autocmd bufwritepost $MYVIMRC source $MYVIMRC
    " Autoinsert text in html
    autocmd FileType html inoremap ;a <a href=""></a><Esc>FaT>i
    autocmd FileType html inoremap ;d <div></div><Esc>FdT>i
    autocmd FileType html inoremap ;1 <h1></h1><Esc>FhT>i
    autocmd FileType html inoremap ;2 <h2></h2><Esc>FhT>i
    autocmd FileType html inoremap ;3 <h3></h3><Esc>FhT>i
    autocmd FileType html inoremap ;p <p></p><Esc>FpT>i
    autocmd FileType html inoremap ;5 {%  %}<Esc>F%hi

    " Autoinsert date in todo.txt
    autocmd BufReadPost todo.txt if getline(5) =~ system('date "+%A, %B %e"') | else | execute "normal! 5GddC" . system('date "+%A, %B %e"') . "\<Esc>" | endif
    " Autoinsert weather in todo.txt
    autocmd BufReadPost todo.txt execute "normal! 6GddC" . system('curl -s "http://wttr.in/Korolev?format=4"') . "\<Esc>"
    " Autoinsert random photos in todo.txt
    autocmd BufReadPost /home/sam/todo.txt execute "normal! /^IMAGES\<CR>jd}k" | silent execute "r !ls /home/sam/Pictures/Arhyz/*.jpg | shuf -n 5"
    " Autoinsert random music in todo.txt
    autocmd BufReadPost /home/sam/todo.txt execute "normal! /^MUSIC\<CR>jd}k" | silent execute "r !ls /home/sam/Music/Spotify/*.ogg | shuf -n 5"
    
    " Autocompile R markdown
    autocmd Filetype rmd map <F4> :!echo<space>"require(markdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

    " Autoconvert to pdf from R language files *.rmd
    autocmd FileType rmd map <F2> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

augroup END
