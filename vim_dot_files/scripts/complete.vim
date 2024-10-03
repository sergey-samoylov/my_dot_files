" My autocomplete
func! Complete()
    if index(['html'], &filetype) != -1
        " insert html template
        nnoremap ,ht :-1read $HOME/.vim/template/default.html<CR>13jfCC
    elseif index(['python'], &filetype) != -1
        " insert Python start lines
        nnoremap ,py :-1read $HOME/.vim/template/py<CR>2ji

        " insert Python rich imports
        nnoremap ,ri :-1read $HOME/.vim/template/rich<CR>6ji
    endif
endfunc

call Complete()
