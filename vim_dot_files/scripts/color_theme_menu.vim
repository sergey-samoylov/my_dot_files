func! ColorSelecting(_, result)
    if(a:result == 1)
        call writefile(['colorscheme tokyonight'], $HOME.'/.vim/config/colorscheme.vim', 'b')
        colorscheme tokyonight
    elseif(a:result == 2)
        call writefile(['colorscheme gruvbox'], $HOME.'/.vim/config/colorscheme.vim', 'b')
        colorscheme gruvbox
    elseif(a:result == 3)
        call writefile(['colorscheme nord'], $HOME.'/.vim/config/colorscheme.vim', 'b')
        colorscheme nord
    elseif(a:result == 4)
        call writefile(['colorscheme default'], $HOME.'/.vim/config/colorscheme.vim', 'b')
        colorscheme default
    endif
    source $HOME/.vim/config/highlights.vim
endfunc

" Calling popup menu with color themes
call popup_menu(['tokyonight', 'gruvbox', 'nord', 'default', 'exit'], #{
                \ title: 'Choose colorscheme:', border: [],
				\ callback: 'ColorSelecting',
				\ })
