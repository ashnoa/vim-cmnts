let s:cmnts_comment_delimiter = get(g:, 'cmnts_comment_delimiter', '#')


function! cmnts#JudgeFileType()
    let l:filetype = expand("%:e")

    if l:filetype ==# 'c'
        let s:cmnts_comment_delimiter = '//'

    elseif l:filetype ==# 'cpp'
        let s:cmnts_comment_delimiter = '//'

    elseif l:filetype ==# 'cs'
        let s:cmnts_comment_delimiter = '//'

    elseif l:filetype ==# 'java'
        let s:cmnts_comment_delimiter = '//'

    elseif l:filetype ==# 'js'
        let s:cmnts_comment_delimiter = '//'

    elseif l:filetype ==# 'py'
        let s:cmnts_comment_delimiter = '#'

    elseif l:filetype ==# 'vim'
        let s:cmnts_comment_delimiter = '"'

    else
        let s:cmnts_comment_delimiter = '#'

    endif

endfunction


function! cmnts#AddComment() range
    call cmnts#JudgeFileType()
    let repr = ':' . a:firstline . ',' . a:lastline . 's@^@' . s:cmnts_comment_delimiter . '@g'
    exec repr
endfunction


function! cmnts#RemComment() range
    call cmnts#JudgeFileType()
    let repr = ':' . a:firstline . ',' . a:lastline . 's@^' . s:cmnts_comment_delimiter . '@@g'
    exec repr
endfunction
