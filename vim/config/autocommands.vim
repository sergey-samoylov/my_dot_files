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
    autocmd FileType html inoremap ;d <div></div><Esc>FdT>i
    autocmd FileType html inoremap ;p <p></p><Esc>FpT>i
    autocmd FileType html inoremap ;5 {%  %}<Esc>F%hi

    " Autocompile R markdown
    autocmd Filetype rmd map <F4> :!echo<space>"require(markdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

    " Autoconvert to pdf from R language files *.rmd
    autocmd FileType rmd map <F2> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

augroup END
