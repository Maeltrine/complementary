"------------------------------------------------------------------------------
" Name:         Complementary
" Author:       Maeltrine
" Maintainer:   Maeltrine
" License:      MIT
"------------------------------------------------------------------------------

highlight clear
if exists('syntax_on')
  syntax reset
endif

" ---- COMPLEMENTARY ----------------------------------------------------------
let g:colors_name = 'complementary'
set background=dark

let  s:clear        =  ['NONE',  'NONE'      ]

let  s:PaleBlue     =  ['10',    '#87ffeb']  
let  s:PaleGreen    =  ['10',    '#6875e5']  
let  s:DarkGreen    =  ['10',    '#4affb8']  

let  s:PaleOrange   =  ['48',    '#ffaf87']  
let  s:DarkOrange   =  ['48',    '#ffb84a']  

let  s:PaleYellow   =  ['48',    '#ffeb87']  
let  s:PaleGreen    =  ['48',    '#9bff87']  
let  s:PaleCyan     =  ['48',    '#87ffeb']  

let  s:PaleBlue     =  ['48',    '#879bff']  

let  s:PaleRed      =  ['48',    '#ffeb87']  
let  s:PaleRed      =  ['48',    '#ff879b']  
let  s:DarkRed      =  ['48',    '#ff5e4a']  

let  s:PaleMagenta  =  ['48',    '#af87ff']  
let  s:DarkMagenta  =  ['48',    '#b84aff']  

let  s:White     =  ['16', '#d1d1d1']
let  s:PaleGrey  =  ['10',  '#eeeeee']
let  s:SoftGrey  =  ['10',  '#898c98']
let  s:BaseGrey  =  ['10',  '#595b66']
let  s:DarkGrey  =  ['10',  '#222327']

" Text style 
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'

let  s:Grey0   =  s:White
let  s:Grey1   =  s:PaleGrey
let  s:Grey2   =  s:SoftGrey
let  s:Grey3   =  s:BaseGrey
let  s:Grey4   =  s:DarkGrey
let  s:Red     =  s:PaleRed
let  s:Blue    =  s:PaleBlue
let  s:Yellow  =  s:PaleYellow
let  s:Cyan    =  s:PaleCyan  
let  s:Green   =  s:PaleGreen 
let  s:Orange  =  s:PaleOrange

"------------------------------------------------------------------------------
" HIGHLIGHT helper function to highlight depending on background type
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"------------------------------------------------------------------------------
call  s:highlight('Search',          s:Grey4,    s:White,    s:bold)
call  s:highlight('Comment',         s:Grey3,    s:clear,    s:none)
call  s:highlight('Constant',        s:Grey1,    s:clear,    s:none)
call  s:highlight('String',          s:Cyan,     s:clear,    s:none)
call  s:highlight('Character',       s:Grey1,    s:clear,    s:none)
call  s:highlight('Number',          s:Red,      s:clear,    s:none)
call  s:highlight('Boolean',         s:Blue,     s:clear,    s:none)
call  s:highlight('Float',           s:Red,      s:clear,    s:none)
call  s:highlight('Identifier',      s:Grey0,    s:clear,    s:none)
call  s:highlight('Function',        s:Red,      s:clear,    s:bold)
call  s:highlight('Statement',       s:Red,      s:clear,    s:bold)
call  s:highlight('Conditional',     s:Yellow,   s:clear,    s:bold)
call  s:highlight('Repeat',          s:Grey2,    s:clear,    s:bold)
call  s:highlight('Label',           s:Grey0,    s:clear,    s:bold)
call  s:highlight('Operator',        s:Yellow,   s:clear,    s:none)
call  s:highlight('Keyword',         s:Grey2,    s:clear,    s:italic)
call  s:highlight('Exception',       s:Red,      s:clear,    s:italic)
call  s:highlight('PreProc',         s:Grey1,    s:clear,    s:bold)
call  s:highlight('Include',         s:Grey2,    s:clear,    s:italic)
call  s:highlight('Define',          s:Grey2,    s:clear,    s:italic)
call  s:highlight('Macro',           s:Grey2,    s:clear,    s:none)
call  s:highlight('PreCondit',       s:Grey2,    s:clear,    s:italic)
call  s:highlight('Type',            s:Blue,     s:clear,    s:none)
call  s:highlight('StorageClass',    s:Grey0,    s:clear,    s:bold)
call  s:highlight('Structure',       s:Red,      s:clear,    s:bold)
call  s:highlight('Name',            s:Grey0,    s:clear,    s:bold)
call  s:highlight('Typedef',         s:Grey0,    s:clear,    s:bold)
call  s:highlight('Special',         s:Grey0,    s:clear,    s:none)
call  s:highlight('SpecialChar',     s:Cyan,     s:clear,    s:none)
call  s:highlight('Delimiter',       s:Red,      s:clear,    s:none)
call  s:highlight('SpecialComment',  s:Grey1,    s:clear,    s:none)
call  s:highlight('Debug',           s:Orange,   s:clear,    s:none)
call  s:highlight('Underlined',      s:Grey1,    s:clear,    s:underline)
call  s:highlight('Error',           s:Red,      s:clear,    s:underline)
call  s:highlight('Todo',            s:Grey4,    s:Red,      s:bold)
call  s:highlight('Directory',       s:Grey1,    s:clear,    s:bold)
call  s:highlight('CursorLine',      s:clear,    s:clear,    s:bold)
call  s:highlight('MatchPatern',     s:Grey0,    s:Red,      s:none)
call  s:highlight('ColorColumn',     s:Red,      s:Grey0,    s:none)

" --- INTERFACE ---------------------------------------------------------------
call  s:highlight('Normal',        s:White,    s:Grey4,  s:none)
call  s:highlight('Visual',        s:Grey4,    s:Grey1,  s:none)
call  s:highlight('Cursor',        s:clear,    s:Grey0,  s:none)
call  s:highlight('iCursor',       s:clear,    s:Grey0,  s:none)
call  s:highlight('LineNr',        s:Grey2,    s:clear,  s:none)
call  s:highlight('NonText',       s:Grey0,    s:clear,  s:none)
call  s:highlight('CursorLineNR',  s:Red,      s:clear,  s:none)
call  s:highlight('VertSplit',     s:Grey3,    s:clear,  s:none)
call  s:highlight('StatusLine',    s:Grey2,    s:Grey4,  s:none)
call  s:highlight('StatusLineNC',  s:Grey4,    s:Grey4,  s:none)

" --- VIMDIFF -----------------------------------------------------------------
call  s:highlight('DiffAdd',     s:Green,  s:clear,  s:bold)
call  s:highlight('DiffDelete',  s:Red,    s:clear,  s:bold)
call  s:highlight('DiffChange',  s:Yellow, s:clear,  s:bold)
call  s:highlight('DiffText',    s:Grey2,  s:clear,  s:italic)

" --- GIT GUTTER --------------------------------------------------------------
call  s:highlight('GitGutterAdd',           s:Grey1,  s:clear,  s:none)
call  s:highlight('GitGutterChange',        s:Grey2,    s:clear,  s:none)
call  s:highlight('GitGutterDelete',        s:Grey1,  s:clear,  s:none)
call  s:highlight('GitGutterChangeDelete',  s:Grey1,  s:clear,  s:none)
call  s:highlight('SignColumn',             s:Grey1,  s:clear,  s:none)

" Vimscript syntax highlighting
call  s:highlight('vimOption',   s:Grey1,     s:clear,     s:none)

" --- OMNICOMPLETE ------------------------------------------------------------
call  s:highlight('Pmenu',       s:Grey1,  s:Grey4,  s:none)
call  s:highlight('PmenuSbar',   s:clear,  s:Grey4,  s:none)
call  s:highlight('PmenuThumb',  s:clear,  s:Grey4,  s:none)
call  s:highlight('PmenuSel',    s:Red,    s:Grey4,  s:none)

" --- NERDTREE ----------------------------------------------------------------
call s:highlight('NERDTreeClosable', s:Red, s:clear, s:none)

" --- RIPGREP -----------------------------------------------------------------

" --- PYTHON ------------------------------------------------------------------
call  s:highlight('pythonFunction',  s:Grey1,  s:clear,  s:none)
call  s:highlight('pythonBuiltin',   s:Grey1,  s:clear,  s:italic)

" --- GOLANG ------------------------------------------------------------------
" Requires plug: fatih/vim-go
call  s:highlight('goPackage',  s:Grey2,  s:clear,  s:italic)
call  s:highlight('goImport',   s:Red,    s:clear,  s:italic)

" --- RUST --------------------------------------------------------------------
" Requires plug: rust-lang/rust.vim
call s:highlight('rustMacro', s:Red, s:clear, s:none)
set cursorline
