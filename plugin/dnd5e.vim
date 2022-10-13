if exists('g:loaded_dnd5e')
    finish
endif

let g:loaded_dnd5e = 1

autocmd BufNewFile,BufRead *.dnd5e set syntax=dnd5e

