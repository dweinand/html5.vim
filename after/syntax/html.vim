" Vim syntax file
" Language:     HTML (version 5.1)
" Last Change:  2017 Feb 15
" License:      Public domain
"               (but let me know if you like :) )
"
" Maintainer:   Kao, Wei-Ko(othree) ( othree AT gmail DOT com )

" Comment
" https://github.com/w3c/html/issues/694
syntax region htmlComment start=+<!--+ end=+-->+ contains=@Spell
syntax region htmlComment start=+<!DOCTYPE+ keepend end=+>+

syntax region htmlFold start="<\z(\<\(area\|base\|br\|col\|command\|embed\|hr\|img\|input\|keygen\|link\|meta\|param\|source\|track\|wbr\>\)\@![a-z0-9-]\+\>\)\%(\_s*\_[^/]\?>\|\_s\_[^>]*\_[^>/]>\)" end="</\z1\_s*>" fold transparent keepend extend containedin=htmlHead,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6
