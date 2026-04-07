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
hi Boolean         guifg=#0F1E3A
hi Character       guifg=#1E9B95
hi Number          guifg=#0F1E3A
hi String          guifg=#1E9B95
hi Conditional     guifg=#8C6582 gui=bold
hi Constant        guifg=#0F1E3A gui=bold
hi Cursor          guifg=#15171C guibg=#7D7B90
hi iCursor         guifg=#15171C guibg=#7D7B90
hi Debug           guifg=#BB87AE gui=bold
hi Define          guifg=#051F38
hi Delimiter       guifg=#998593
hi DiffAdd                       guibg=#0B172C
hi DiffChange      guifg=#051F38 guibg=#177470
hi DiffDelete      guifg=#04172A guibg=#3C3E44
hi DiffText                      guibg=#177470 gui=italic,bold

hi Directory       guifg=#0B172C gui=bold
hi Error           guifg=#EBD7E5 guibg=#04172A
hi ErrorMsg        guifg=#04172A guibg=#15171C gui=bold
hi Exception       guifg=#0B172C gui=bold
hi Float           guifg=#0F1E3A
hi FoldColumn      guifg=#998593 guibg=#15171C
hi Folded          guifg=#998593 guibg=#15171C
hi Function        guifg=#1E9B95
hi Identifier      guifg=#051F38
hi Ignore          guifg=#998593 guibg=#15171C
hi IncSearch       guifg=#15171C guibg=#956B88
hi Keyword         guifg=#8C6582 gui=bold
hi Label           guifg=#1E9B95 gui=none
hi Macro           guifg=#051F38 gui=italic
hi SpecialKey      guifg=#956B88 gui=italic
hi MatchParen      guifg=#15171C guibg=#051F38 gui=bold
hi ModeMsg         guifg=#EBD7E5
hi MoreMsg         guifg=#EBD7E5
hi Operator        guifg=#8C6582

" ======================
" =  Menu e UI         =
" ======================
hi Pmenu           guifg=#EBD7E5 guibg=#3C3E44
hi PmenuSel        guifg=#15171C guibg=#051F38 gui=bold
hi PmenuSbar                      guibg=#998593
hi PmenuThumb      guibg=#051F38

hi PreCondit       guifg=#177470 gui=bold
hi PreProc         guifg=#177470
hi Question        guifg=#956B88
hi Repeat          guifg=#8C6582 gui=bold
hi Search          guifg=#15171C guibg=#1E9B95
hi SignColumn      guifg=#0B172C guibg=#15171C
hi SpecialChar     guifg=#8C6582 gui=bold
hi SpecialComment  guifg=#998593 gui=bold
hi Special         guifg=#956B88 gui=italic
if has("spell")
    hi SpellBad    guisp=#04172A gui=undercurl
    hi SpellCap    guisp=#051F38 gui=undercurl
    hi SpellLocal  guisp=#0F1E3A gui=undercurl
    hi SpellRare   guisp=#EBD7E5 gui=undercurl
endif

hi Statement       guifg=#8C6582 gui=bold
hi StatusLine      guifg=#15171C guibg=#EBD7E5 gui=bold
hi StatusLineNC    guifg=#EBD7E5 guibg=#15171C
hi StorageClass    guifg=#051F38 gui=italic
hi Structure       guifg=#956B88
hi Tag             guifg=#8C6582 gui=italic
hi Title           guifg=#051F38
hi Todo            guifg=#15171C guibg=#1E9B95 gui=bold

hi Typedef         guifg=#956B88
hi Type            guifg=#956B88 gui=none
hi Underlined      guifg=#998593 gui=underline
hi VertSplit       guifg=#EBD7E5 guibg=#15171C gui=bold
hi VisualNOS                      guibg=#177470
hi Visual                         guibg=#177470
hi WarningMsg      guifg=#EBD7E5 guibg=#0B172C gui=bold
hi WildMenu        guifg=#EBD7E5 guibg=#15171C

hi TabLineFill     guifg=#15171C guibg=#15171C
hi TabLine         guibg=#15171C guifg=#EBD7E5 gui=none

" ======================
" =  Normal / Cursor   =
" ======================
hi Normal          guifg=#EBD7E5 guibg=#15171C
hi Comment         guifg=#998593 gui=italic
hi CursorLine                    guibg=#3C3E44
hi CursorLineNr    guifg=#051F38 gui=bold
hi CursorColumn                  guibg=#3C3E44
hi ColorColumn                   guibg=#3C3E44
hi LineNr          guifg=#998593 guibg=#15171C
hi NonText         guifg=#998593
hi SpecialKey      guifg=#998593

set background=dark

" ======================
" =  Terminal Support  =
" ======================
if has("nvim") || has("termguicolors")
  let g:terminal_ansi_colors = [
        \ "#3C3E44",  "#04172A",  "#0B172C",  "#177470",
        \ "#177470",  "#8C6582",  "#956B88",  "#DBBED2",
        \ "#998593",  "#051F38",  "#0F1E3A", "#1E9B95",
        \ "#1E9B95", "#BB87AE", "#C78EB6", "#DBBED2" ]
endif

