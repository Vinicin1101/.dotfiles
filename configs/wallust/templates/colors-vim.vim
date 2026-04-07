" Vim color file
"
" Name: wallust.vim
" Author: Adapted by Mifares
" Based on: molokai by Tomas Restrepo
"
" Dynamic template for Wallust / Pywal
"

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "wallust"

" ======================
" =  Base highlights   =
" ======================
hi Boolean         guifg={{color10}}
hi Character       guifg={{color11}}
hi Number          guifg={{color10}}
hi String          guifg={{color11}}
hi Conditional     guifg={{color5}} gui=bold
hi Constant        guifg={{color10}} gui=bold
hi Cursor          guifg={{background}} guibg={{cursor}}
hi iCursor         guifg={{background}} guibg={{cursor}}
hi Debug           guifg={{color13}} gui=bold
hi Define          guifg={{color9}}
hi Delimiter       guifg={{color8}}
hi DiffAdd                       guibg={{color2}}
hi DiffChange      guifg={{color9}} guibg={{color3}}
hi DiffDelete      guifg={{color1}} guibg={{color0}}
hi DiffText                      guibg={{color3}} gui=italic,bold

hi Directory       guifg={{color2}} gui=bold
hi Error           guifg={{foreground}} guibg={{color1}}
hi ErrorMsg        guifg={{color1}} guibg={{background}} gui=bold
hi Exception       guifg={{color2}} gui=bold
hi Float           guifg={{color10}}
hi FoldColumn      guifg={{color8}} guibg={{background}}
hi Folded          guifg={{color8}} guibg={{background}}
hi Function        guifg={{color12}}
hi Identifier      guifg={{color9}}
hi Ignore          guifg={{color8}} guibg={{background}}
hi IncSearch       guifg={{background}} guibg={{color6}}
hi Keyword         guifg={{color5}} gui=bold
hi Label           guifg={{color11}} gui=none
hi Macro           guifg={{color9}} gui=italic
hi SpecialKey      guifg={{color6}} gui=italic
hi MatchParen      guifg={{background}} guibg={{color9}} gui=bold
hi ModeMsg         guifg={{foreground}}
hi MoreMsg         guifg={{foreground}}
hi Operator        guifg={{color5}}

" ======================
" =  Menu e UI         =
" ======================
hi Pmenu           guifg={{foreground}} guibg={{color0}}
hi PmenuSel        guifg={{background}} guibg={{color9}} gui=bold
hi PmenuSbar                      guibg={{color8}}
hi PmenuThumb      guibg={{color9}}

hi PreCondit       guifg={{color4}} gui=bold
hi PreProc         guifg={{color4}}
hi Question        guifg={{color6}}
hi Repeat          guifg={{color5}} gui=bold
hi Search          guifg={{background}} guibg={{color11}}
hi SignColumn      guifg={{color2}} guibg={{background}}
hi SpecialChar     guifg={{color5}} gui=bold
hi SpecialComment  guifg={{color8}} gui=bold
hi Special         guifg={{color6}} gui=italic
if has("spell")
    hi SpellBad    guisp={{color1}} gui=undercurl
    hi SpellCap    guisp={{color9}} gui=undercurl
    hi SpellLocal  guisp={{color10}} gui=undercurl
    hi SpellRare   guisp={{foreground}} gui=undercurl
endif

hi Statement       guifg={{color5}} gui=bold
hi StatusLine      guifg={{background}} guibg={{foreground}} gui=bold
hi StatusLineNC    guifg={{foreground}} guibg={{background}}
hi StorageClass    guifg={{color9}} gui=italic
hi Structure       guifg={{color6}}
hi Tag             guifg={{color5}} gui=italic
hi Title           guifg={{color9}}
hi Todo            guifg={{background}} guibg={{color11}} gui=bold

hi Typedef         guifg={{color6}}
hi Type            guifg={{color6}} gui=none
hi Underlined      guifg={{color8}} gui=underline
hi VertSplit       guifg={{foreground}} guibg={{background}} gui=bold
hi VisualNOS                      guibg={{color3}}
hi Visual                         guibg={{color3}}
hi WarningMsg      guifg={{foreground}} guibg={{color2}} gui=bold
hi WildMenu        guifg={{foreground}} guibg={{background}}

hi TabLineFill     guifg={{background}} guibg={{background}}
hi TabLine         guibg={{background}} guifg={{foreground}} gui=none

" ======================
" =  Normal / Cursor   =
" ======================
hi Normal          guifg={{foreground}} guibg={{background}}
hi Comment         guifg={{color8}} gui=italic
hi CursorLine                    guibg={{color0}}
hi CursorLineNr    guifg={{color9}} gui=bold
hi CursorColumn                  guibg={{color0}}
hi ColorColumn                   guibg={{color0}}
hi LineNr          guifg={{color8}} guibg={{background}}
hi NonText         guifg={{color8}}
hi SpecialKey      guifg={{color8}}

set background=dark

" ======================
" =  Terminal Support  =
" ======================
if has("nvim") || has("termguicolors")
  let g:terminal_ansi_colors = [
        \ "{{color0}}",  "{{color1}}",  "{{color2}}",  "{{color3}}",
        \ "{{color4}}",  "{{color5}}",  "{{color6}}",  "{{color7}}",
        \ "{{color8}}",  "{{color9}}",  "{{color10}}", "{{color11}}",
        \ "{{color12}}", "{{color13}}", "{{color14}}", "{{color15}}" ]
endif

