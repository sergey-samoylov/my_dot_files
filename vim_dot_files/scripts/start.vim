"Vim Enters
func! Start()
    if argc() == 0 && !exists('s:std_in')
        " :-1read ~/.vim/menu
        " set number!
        " set relativenumber!
        " " Main filetype for menu 
        " set filetype=sun
        edit .
        " nmap n :set number<CR>:set relativenumber<CR>gg0cG
    endif
endfunc

call Start()
