" i took the slate cholorscheme located at /usr/share/vim/vim92/colors/slate.vim and rewritten it with my preferred colors
set background=light

hi clear
let g:colors_name = 'ris_color_scheme'

let s:t_Co = has('gui_running') ? 16777216 : str2nr(&t_Co)
let s:tgc = has('termguicolors') && &termguicolors

let g:terminal_ansi_colors = ['#000000', '#cd0000', '#00cd00', '#cdcd00', '#0000ee', '#cd00cd', '#00cdcd', '#e5e5e5', '#7f7f7f', '#ff0000', '#00ff00', '#ffff00', '#5c5cff', '#ff00ff', '#00ffff', '#ffffff']

hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link Float Number
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link MessageWindow Pmenu
hi! link Number Constant
hi! link PopupNotification Todo
hi! link Terminal Normal

" everything that is is indented (two spaces: "  ") remains
" unchanged; i was not able to find what these colors control

hi Normal guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE ctermfg=231 ctermbg=235 cterm=NONE term=NONE
  hi ColorColumn guifg=NONE guibg=#000000 guisp=NONE gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE term=reverse
hi Comment guifg=#00aa00 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE term=bold
  hi Conceal guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE term=NONE
hi Constant guifg=#2c4dd9 guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE term=NONE
hi CursorColumn guifg=NONE guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=NONE
hi CursorLine guifg=NONE guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=underline
hi CursorLineNr guifg=NONE guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=bold
  hi Define guifg=#ffd700 guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold term=bold
  hi DiffAdd guifg=#ffffff guibg=#5f875f guisp=NONE gui=NONE ctermfg=231 ctermbg=65 cterm=NONE term=reverse
  hi DiffChange guifg=#ffffff guibg=#5f87af guisp=NONE gui=NONE ctermfg=231 ctermbg=67 cterm=NONE term=NONE
  hi DiffDelete guifg=#ffffff guibg=#af5faf guisp=NONE gui=NONE ctermfg=231 ctermbg=133 cterm=NONE term=reverse
  hi DiffText guifg=#000000 guibg=#c6c6c6 guisp=NONE gui=NONE ctermfg=16 ctermbg=251 cterm=NONE term=reverse
hi Directory guifg=#00875f guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE term=NONE
hi EndOfBuffer guifg=#3bac90 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE term=NONE
  hi Error guifg=#ff0000 guibg=#ffffff guisp=NONE gui=reverse ctermfg=196 ctermbg=231 cterm=reverse term=bold,reverse
  hi ErrorMsg guifg=#ff0000 guibg=#000000 guisp=NONE gui=reverse ctermfg=196 ctermbg=16 cterm=reverse term=bold,reverse
  hi FoldColumn guifg=#5f87d7 guibg=#000000 guisp=NONE gui=NONE ctermfg=68 ctermbg=16 cterm=NONE term=NONE
  hi Folded guifg=#666666 guibg=#000000 guisp=NONE gui=NONE ctermfg=241 ctermbg=16 cterm=NONE term=NONE
hi Function guifg=#b42400 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE term=NONE
hi Identifier guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE term=NONE
  hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=NONE
hi IncSearch guifg=#ffffff guibg=#38d878 guisp=NONE gui=NONE ctermfg=16 ctermbg=46 cterm=NONE term=bold,reverse,underline
hi LineNr guifg=#3bac90 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE term=NONE
  hi MatchParen guifg=#000000 guibg=#ffd700 guisp=NONE gui=NONE ctermfg=16 ctermbg=220 cterm=NONE term=bold,underline
  hi ModeMsg guifg=#262626 guibg=#ffd700 guisp=NONE gui=NONE ctermfg=235 ctermbg=220 cterm=NONE term=bold
  hi MoreMsg guifg=#00875f guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE term=NONE
hi NonText guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE term=NONE
hi Operator guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE term=NONE
hi Pmenu guifg=NONE guibg=#eef1f8 guisp=NONE gui=NONE ctermfg=NONE ctermbg=239 cterm=NONE term=reverse
  hi PmenuMatch guifg=#d7875f guibg=#4a4a4a guisp=NONE gui=NONE ctermfg=173 ctermbg=239 cterm=NONE term=NONE
  hi PmenuMatchSel guifg=#d7875f guibg=#d7d787 guisp=NONE gui=NONE ctermfg=173 ctermbg=186 cterm=NONE term=NONE
hi PmenuSbar guifg=NONE guibg=#cccccc guisp=NONE gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE term=reverse
hi PmenuSel guifg=#000000 guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=235 ctermbg=186 cterm=NONE term=bold
hi PmenuThumb guifg=NONE guibg=#aaaaaa guisp=NONE gui=NONE ctermfg=NONE ctermbg=220 cterm=NONE term=NONE
hi PreProc guifg=#990ecc guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE term=NONE
  hi Question guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE term=standout
  hi QuickFixLine guifg=#000000 guibg=#5f87d7 guisp=NONE gui=NONE ctermfg=16 ctermbg=68 cterm=NONE term=NONE
hi Search guifg=#ffffff guibg=#ef0fff guisp=NONE gui=NONE ctermfg=16 ctermbg=173 cterm=NONE term=reverse
hi SignColumn guifg=NONE guibg=#eeeeee guisp=NONE gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE term=reverse
hi Special guifg=#fa2411 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE term=NONE
  hi SpecialKey guifg=#00875f guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE term=bold
  hi SpellBad guifg=#ff0000 guibg=NONE guisp=#ff0000 gui=undercurl ctermfg=196 ctermbg=NONE cterm=underline term=underline
  hi SpellCap guifg=#ffff00 guibg=NONE guisp=#ffff00 gui=undercurl ctermfg=226 ctermbg=NONE cterm=underline term=underline
  hi SpellLocal guifg=#ffafaf guibg=NONE guisp=#ffafaf gui=undercurl ctermfg=217 ctermbg=NONE cterm=underline term=underline
  hi SpellRare guifg=#ffd7af guibg=NONE guisp=#ffd7af gui=undercurl ctermfg=223 ctermbg=NONE cterm=underline term=underline
hi Statement guifg=#ca077f guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE term=NONE
hi StatusLine guifg=#000000 guibg=#d0ffc1 guisp=NONE gui=NONE ctermfg=16 ctermbg=144 cterm=NONE term=bold,reverse
hi StatusLineNC guifg=#666666 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=241 ctermbg=144 cterm=NONE term=bold,underline
hi StatusLineTerm guifg=#000000 guibg=#01b100 guisp=NONE gui=NONE ctermfg=16 ctermbg=144 cterm=NONE term=bold,reverse
hi StatusLineTermNC guifg=#666666 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=241 ctermbg=144 cterm=NONE term=bold,underline
hi String guifg=#964e00 guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE term=NONE
hi Structure guifg=#2c4dd9 guibg=NONE guisp=NONE gui=NONE ctermfg=46 ctermbg=NONE cterm=NONE term=NONE
hi TabLine guifg=#666666 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=241 ctermbg=236 cterm=NONE term=bold,underline
hi TabLineFill guifg=#000000 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=210 ctermbg=236 cterm=NONE term=NONE
hi TabLineSel guifg=#000000 guibg=#d0ffc1 guisp=NONE gui=NONE ctermfg=16 ctermbg=144 cterm=NONE term=bold,reverse
hi Title guifg=#ff8500 guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold term=NONE
  hi TitleBar guifg=#ffffff guibg=#3c3c3c guisp=NONE gui=NONE ctermfg=231 ctermbg=237 cterm=NONE term=NONE
  hi TitleBarNC guifg=#666666 guibg=#2c2c2c guisp=NONE gui=NONE ctermfg=241 ctermbg=236 cterm=NONE term=NONE
hi Todo guifg=#0300ff guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=226 cterm=NONE term=bold,reverse
  hi ToolbarButton guifg=#262626 guibg=#d7d787 guisp=NONE gui=NONE ctermfg=235 ctermbg=186 cterm=NONE term=bold,reverse
  hi ToolbarLine guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=reverse
hi Type guifg=#2c4dd9 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE term=NONE
  hi Underlined guifg=#5f87d7 guibg=NONE guisp=NONE gui=underline ctermfg=68 ctermbg=NONE cterm=underline term=underline
  hi VertSplit guifg=#666666 guibg=#afaf87 guisp=NONE gui=NONE ctermfg=241 ctermbg=144 cterm=NONE term=NONE
hi Visual guifg=#000000 guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=186 ctermbg=64 cterm=NONE term=reverse
hi VisualNOS guifg=#000000 guibg=#ffcc00 guisp=NONE gui=NONE ctermfg=186 ctermbg=64 cterm=NONE term=NONE
  hi WarningMsg guifg=#ff8787 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE term=standout
  hi WildMenu guifg=#262626 guibg=#d7d787 guisp=NONE gui=NONE ctermfg=235 ctermbg=186 cterm=NONE term=bold

" everything below remains unchanged

if has('gui_running') || s:tgc
  hi Cursor guifg=#333333 guibg=#d7d787 guisp=NONE gui=NONE cterm=NONE
  hi lCursor guifg=#262626 guibg=#ffafaf guisp=NONE gui=NONE cterm=NONE
endif

if s:tgc || s:t_Co >= 256
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=grey ctermbg=black cterm=NONE
  hi ColorColumn ctermfg=white ctermbg=darkgrey cterm=NONE
  hi Comment ctermfg=darkgray ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=grey ctermbg=NONE cterm=NONE
  hi Constant ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=yellow ctermbg=NONE cterm=bold
  hi Define ctermfg=yellow ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=white ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=white ctermbg=blue cterm=NONE
  hi DiffDelete ctermfg=white ctermbg=magenta cterm=NONE
  hi DiffText ctermfg=black ctermbg=grey cterm=NONE
  hi Directory ctermfg=darkgreen ctermbg=NONE cterm=bold
  hi EndOfBuffer ctermfg=darkblue ctermbg=NONE cterm=bold
  hi Error ctermfg=darkred ctermbg=white cterm=reverse
  hi ErrorMsg ctermfg=darkred ctermbg=black cterm=reverse
  hi FoldColumn ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Folded ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Function ctermfg=yellow ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=red ctermbg=NONE cterm=bold
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=black ctermbg=darkgreen cterm=NONE
  hi LineNr ctermfg=grey ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=black ctermbg=yellow cterm=NONE
  hi ModeMsg ctermfg=black ctermbg=yellow cterm=NONE
  hi MoreMsg ctermfg=green ctermbg=NONE cterm=NONE
  hi NonText ctermfg=blue ctermbg=NONE cterm=NONE
  hi Operator ctermfg=red ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=NONE ctermbg=darkgrey cterm=NONE
  hi PmenuMatch ctermfg=black ctermbg=darkgrey cterm=bold
  hi PmenuMatchSel ctermfg=black ctermbg=darkmagenta cterm=bold
  hi PmenuSbar ctermfg=NONE ctermbg=black cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkmagenta cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=yellow cterm=NONE
  hi PreProc ctermfg=red ctermbg=NONE cterm=NONE
  hi Question ctermfg=yellow ctermbg=NONE cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=blue cterm=NONE
  hi Search ctermfg=black ctermbg=darkmagenta cterm=NONE
  hi SignColumn ctermfg=NONE ctermbg=black cterm=NONE
  hi Special ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=green ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=darkyellow ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=red ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
  hi Statement ctermfg=blue ctermbg=NONE cterm=bold
  hi StatusLine ctermfg=white ctermbg=black cterm=bold,reverse
  hi StatusLineNC ctermfg=black ctermbg=grey cterm=NONE
  hi StatusLineTerm ctermfg=white ctermbg=black cterm=bold,reverse
  hi StatusLineTermNC ctermfg=black ctermbg=grey cterm=NONE
  hi String ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Structure ctermfg=green ctermbg=NONE cterm=NONE
  hi TabLine ctermfg=grey ctermbg=darkgrey cterm=NONE
  hi TabLineFill ctermfg=cyan ctermbg=darkgrey cterm=NONE
  hi TabLineSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Title ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi TitleBar ctermfg=white ctermbg=black cterm=NONE
  hi TitleBarNC ctermfg=grey ctermbg=black cterm=NONE
  hi Todo ctermfg=black ctermbg=yellow cterm=NONE
  hi ToolbarButton ctermfg=black ctermbg=darkyellow cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Type ctermfg=blue ctermbg=NONE cterm=bold
  hi Underlined ctermfg=blue ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=darkgrey ctermbg=grey cterm=NONE
  hi Visual ctermfg=yellow ctermbg=darkgreen cterm=NONE
  hi VisualNOS ctermfg=darkmagenta ctermbg=darkgreen cterm=NONE
  hi WarningMsg ctermfg=cyan ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkyellow cterm=NONE
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=grey ctermbg=black cterm=NONE
  hi ColorColumn ctermfg=grey ctermbg=darkred cterm=NONE
  hi Comment ctermfg=darkgray ctermbg=NONE cterm=bold
  hi Conceal ctermfg=grey ctermbg=NONE cterm=NONE
  hi Constant ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi Define ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=white ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=white ctermbg=darkblue cterm=NONE
  hi DiffDelete ctermfg=white ctermbg=darkmagenta cterm=NONE
  hi DiffText ctermfg=black ctermbg=grey cterm=NONE
  hi Directory ctermfg=darkgreen ctermbg=NONE cterm=bold
  hi EndOfBuffer ctermfg=darkblue ctermbg=NONE cterm=bold
  hi Error ctermfg=darkred ctermbg=grey cterm=reverse
  hi ErrorMsg ctermfg=darkred ctermbg=black cterm=reverse
  hi FoldColumn ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Folded ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Function ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi Identifier ctermfg=darkred ctermbg=NONE cterm=bold
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=black ctermbg=darkgreen cterm=NONE
  hi LineNr ctermfg=grey ctermbg=NONE cterm=bold
  hi MatchParen ctermfg=black ctermbg=darkyellow cterm=NONE
  hi ModeMsg ctermfg=NONE ctermbg=darkyellow cterm=NONE
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi NonText ctermfg=darkblue ctermbg=NONE cterm=bold
  hi Operator ctermfg=darkred ctermbg=NONE cterm=bold
  hi Pmenu ctermfg=black ctermbg=darkcyan cterm=NONE
  hi PmenuMatch ctermfg=black ctermbg=darkcyan cterm=bold
  hi PmenuMatchSel ctermfg=black ctermbg=darkyellow cterm=bold
  hi PmenuSbar ctermfg=NONE ctermbg=black cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=darkyellow cterm=NONE
  hi PreProc ctermfg=darkred ctermbg=NONE cterm=bold
  hi Question ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=darkblue cterm=NONE
  hi Search ctermfg=black ctermbg=darkmagenta cterm=NONE
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=darkgreen ctermbg=NONE cterm=bold
  hi SpellBad ctermfg=darkred ctermbg=darkyellow cterm=reverse
  hi SpellCap ctermfg=darkyellow ctermbg=NONE cterm=reverse
  hi SpellLocal ctermfg=darkmagenta ctermbg=darkyellow cterm=reverse
  hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=reverse
  hi Statement ctermfg=darkblue ctermbg=NONE cterm=bold
  hi StatusLine ctermfg=grey ctermbg=black cterm=bold,reverse
  hi StatusLineNC ctermfg=grey ctermbg=black cterm=reverse
  hi StatusLineTerm ctermfg=grey ctermbg=black cterm=bold,reverse
  hi StatusLineTermNC ctermfg=grey ctermbg=black cterm=reverse
  hi String ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Structure ctermfg=darkgreen ctermbg=NONE cterm=bold
  hi TabLine ctermfg=grey ctermbg=black cterm=reverse
  hi TabLineFill ctermfg=grey ctermbg=black cterm=reverse
  hi TabLineSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Title ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi TitleBar ctermfg=white ctermbg=black cterm=NONE
  hi TitleBarNC ctermfg=grey ctermbg=black cterm=NONE
  hi Todo ctermfg=black ctermbg=yellow cterm=NONE
  hi ToolbarButton ctermfg=grey ctermbg=black cterm=bold,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Type ctermfg=darkblue ctermbg=NONE cterm=bold
  hi Underlined ctermfg=blue ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=grey ctermbg=black cterm=reverse
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS ctermfg=darkmagenta ctermbg=darkgreen cterm=underline
  hi WarningMsg ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkyellow cterm=NONE
  finish
endif

if s:t_Co >= 0
  hi CurSearch term=reverse
  hi Cursor term=reverse
  hi CursorIM term=NONE
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Float term=NONE
  hi Number term=NONE
  hi Terminal term=NONE
  finish
endif

" vim: et ts=8 sw=2 sts=2
