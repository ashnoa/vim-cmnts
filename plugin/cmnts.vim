if exists('g:loaded_cmnts')
    finish
endif
let g:loaded_cmnts = 1

command! -nargs=0 -range CmntsAdd :<line1>,<line2>call cmnts#AddComment()
command! -nargs=0 -range CmntsRem :<line1>,<line2>call cmnts#RemComment()

map <unique> <silent> \e :CmntsAdd<CR>
map <unique> <silent> \w :CmntsRem<CR>
