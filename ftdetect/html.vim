function! s:DetectGoTemplate()
  if findfile('.hugo_build.lock', '.;') !=# ''
    set ft=gohtml
  elseif search('{{\s*end\s*}}')
    set ft=gohtml
  elseif search('{{\s*$\k\+\s*:=')
    set ft=gohtml
  elseif search('{{\s*\.[A-Z]')
    set ft=gohtml
  endif
endfunction

augroup DetectGoTemplate
  autocmd!
  autocmd BufNewFile,BufRead *.html call <SID>DetectGoTemplate()
augroup END
