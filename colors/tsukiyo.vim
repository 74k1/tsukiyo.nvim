" Vim color file
" Maintainer: 74k1
" Last Change: 2025

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="tsukiyo"

lua require('tsukiyo').setup()
