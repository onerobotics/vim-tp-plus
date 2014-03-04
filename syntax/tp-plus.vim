" Vim syntax file
" Language: TP+
" Author:   Jay Strybis <jay.strybis@gmail.com>
" URL:      http://github.com/onerobotics/vim-tp-plus
" License:  MIT

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif

" Identifiers
syn match       tppIdentifier        /[a-zA-Z0-9_\?\!]*/
hi def link     tppIdentifier        Identifier

" Constants
syn match       tppConstant          /[A-Z0-9_\?\!]\+/
hi def link     tppConstant          Constant

" Preproc
syn keyword     tppHeader            TP_IGNORE_PAUSE TP_COMMENT TP_GROUPMASK
hi def link     tppHeader            PreProc

" Conditional
syn keyword     tppConditional       case else if end unless
hi def link     tppConditional       Conditional

" Repeat
syn keyword     tppRepeat            for do while
hi def link     tppRepeat            Repeat

" Booleans
syn keyword     tppBoolean           true false
hi def link     tppBoolean           Boolean

" Strings
syn region      tppString            start="'" end="'"
syn region      tppString            start='"' end='"'
hi def link     tppString            String

" TP Types
syn region      tpType               start="AR\[" end="\]"     contains=tppInteger
syn region      tpType               start="DI\[" end="\]"     contains=tppInteger
syn region      tpType               start="DO\[" end="\]"     contains=tppInteger
syn region      tpType               start="F\[" end="\]"      contains=tppInteger
syn region      tpType               start="GI\[" end="\]"     contains=tppInteger
syn region      tpType               start="GO\[" end="\]"     contains=tppInteger
syn region      tpType               start="P\[" end="\]"      contains=tppInteger
syn region      tpType               start="PR\[" end="\]"     contains=tppInteger
syn region      tpType               start="R\[" end="\]"      contains=tppInteger
syn region      tpType               start="RI\[" end="\]"     contains=tppInteger
syn region      tpType               start="RO\[" end="\]"     contains=tppInteger
syn region      tpType               start="SI\[" end="\]"     contains=tppInteger
syn region      tpType               start="SO\[" end="\]"     contains=tppInteger
syn region      tpType               start="SR\[" end="\]"     contains=tppInteger
syn region      tpType               start="UI\[" end="\]"     contains=tppInteger
syn region      tpType               start="UO\[" end="\]"     contains=tppInteger
syn region      tpType               start="VR\[" end="\]"     contains=tppInteger
syn region      tpType               start="TIMER\[" end="\]"  contains=tppInteger
syn region      tpType               start="UALM\[" end="\]"   contains=tppInteger
syn region      tpType               start="UFRAME\[" end="\]" contains=tppInteger
syn region      tpType               start="UTOOL\[" end="\]"  contains=tppInteger
hi def link     tpType               Type

" Operators
syn match       tppOperator          /==/
syn match       tppOperator          /:=/
syn match       tppOperator          /=/
syn match       tppOperator          /<>/
syn match       tppOperator          /!=/
syn match       tppOperator          /</
syn match       tppOperator          />/
syn match       tppOperator          /[\+\-\*\/\%]/
hi def link     tppOperator          Operator

" Labels
syn match       tppLabel             /@\w\+/
syn keyword     tppLabel             when
hi def link     tppLabel             Label

" Numbers
syn match       tppInteger           /[\-]\?\d\+/
syn match       tppFloat             /[\-]\?\d\+\.\d\+/
hi def link     tppInteger           Number
hi def link     tppFloat             Float

" Motion
syn keyword     tppMotion            circular_move joint_move linear_move
hi def link     tppMotion            Keyword

" Keywords
syn keyword     tppKeyword           after at eval indirect in jump_to namespace offset position_data pulse raise reset restart run skip_to start stop term time_after time_before timeout_to tool_offset to vision_offset wait_for wait_until set_skip_condition set_uframe use_payload use_uframe use_utool turn_on turn_off toggle
hi def link     tppKeyword           Keyword

" Comments
syn match       tppComment           /#.*/
hi def link     tppComment           Comment

let b:current_syntax = "tp-plus"
