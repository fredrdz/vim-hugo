if exists('b:did_ftplugin')
  finish
endif

runtime! ftplugin/html.vim

setlocal path+=layouts,resources,content,archetypes,static,data,layouts/_default,layouts/partials
setlocal includeexpr=v:fname\.'.html'

setlocal commentstring={{/*%s*/}}

if exists('loaded_matchit')
  let b:match_words=b:match_words.','
        \.'\<\%(define\|block\|with\|range\|if\)\>:'
        \.'\<else\>:'
        \.'\<end\>,'
endif

let b:undo_ftplugin = 'setlocal com< path<'
