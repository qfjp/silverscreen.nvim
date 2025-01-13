-- Colors taken from colorpalettes.net (palette 4453)

local lush = require('lush')
local hsl = lush.hsluv

local negative_base = hsl("#633251")
local positive_base = hsl("#72855e")
local mynitive_base = hsl("#363535")

local step = 30

-- positive
local positive = positive_base
local colorp5 = positive
local colorp4 = colorp5.lighten(step)
local colorp3 = colorp4.lighten(step)
local colorp2 = colorp3.lighten(step)
local colorp1 = colorp2.lighten(step)

-- flat

local mynitive = mynitive_base.darken(2 * step)
local colorf5 = mynitive
local colorf4 = colorf5.lighten(step)
local colorf3 = colorf4.lighten(step)
local colorf2 = colorf3.lighten(step)
local colorf1 = colorf2.lighten(step)
local white = colorf1.lighten(step * 2)

-- negative
local negative = negative_base
local colorn5 = negative
local colorn4 = colorn5.lighten(step)
local colorn3 = colorn4.lighten(step)
local colorn2 = colorn3.lighten(step)
local colorn1 = colorn2.lighten(step)

local red = colorp1.rotate(270)

vim.g.red = red.hex
vim.g.blue = red.rotate(225).hex
vim.g.yellow = red.rotate(45).hex

vim.g.colorp5 = colorp5.hex
vim.g.colorp4 = colorp4.hex
vim.g.colorp3 = colorp3.hex
vim.g.colorp2 = colorp2.hex
vim.g.colorp1 = colorp1.hex

vim.g.colorf5 = colorf5.hex
vim.g.colorf4 = colorf4.hex
vim.g.colorf3 = colorf3.hex
vim.g.colorf2 = colorf2.hex
vim.g.colorf1 = colorf1.hex

vim.g.colorn5 = colorn5.hex
vim.g.colorn4 = colorn4.hex
vim.g.colorn3 = colorn3.hex
vim.g.colorn2 = colorn2.hex
vim.g.colorn1 = colorn1.hex

vim.g.lightest = white.hex
vim.g.darkest = colorf5.darken(step * 2).hex


--   Relative adjustment: rotate(), saturate(), desaturate(), lighten(), darken()
--                        aliased to ro(), sa() de(), li(), da(), mix(), readable()
--   Overide:             hue(), saturation(), lightness()
--   Access:              .h, .s, .l
--   Coercion:            tostring(), "Concatenation: " .. color
---@diagnostic disable: undefined-global
local theme = lush(function()
    return {
        Normal { fg = colorf1, bg = colorf5 },

        -- {{{ Misc

        --Comment { fg = colorp3 },
        Comment { fg = white, gui = "bold" },
        --Constant { fg = colorn2 },
        Constant { fg = white, gui = "italic" },
        Directory { Normal },
        EndOfBuffer { fg = colorf4 },
        Identifier { fg = white }, --, gui = "bold" },
        MatchParen { gui = "bold,underdouble" },
        NonText { EndOfBuffer },
        Number { Constant },
        PreProc { fg = colorf3 },
        Special { Identifier },
        SpecialKey { Normal },
        Statement { PreProc, gui = "bold" },
        Function { Statement, gui = "none" },
        String { fg = colorf2 },
        Title { gui = "bold" },
        Todo { fg = colorn1 },
        Type { Identifier },
        VertSplit { fg = colorf4 },
        WildMenu { fg = colorf4, bg = colorf1 },

        -- }}}
        -- {{{ Cursor lines

        CursorColumn { bg = colorf4.darken(step * 2) },
        CursorLine { CursorColumn },

        -- }}}
        -- {{{ Tabline

        TabLine { fg = colorf4, bg = colorf1 },
        TabLineFill { Normal },
        TabLineSel { fg = TabLine.fg.darken(step), bg = TabLine.bg.darken(step) },

        -- }}}
        -- {{{ Statusline

        StatusLine { TabLine },
        StatusLineNC { StatusLine, gui = "reverse" },

        -- }}}
        -- {{{ Number column

        CursorLineNr { fg = Normal.fg, bg = Normal.bg.lighten(step) },
        LineNr { fg = Normal.fg, bg = Normal.bg.darken(step * 2) },

        -- }}}
        -- {{{ Color column

        ColorColumn { CursorLine },

        -- }}}
        -- {{{ Diff & Signs

        SignColumn { LineNr },
        DiffAdd { fg = colorp5 },
        DiffDelete { fg = colorp5.rotate(270) },
        DiffChange { fg = colorn4 },
        DiffText { Normal },

        -- }}}
        -- {{{ Folds

        FoldColumn { fg = colorn2, bg = LineNr.bg },
        Folded { fg = FoldColumn.fg, bg = Normal.bg },

        -- }}}
        -- {{{ Search

        IncSearch { bg = colorf4, fg = Normal.fg, gui = "underdotted" },
        Search { IncSearch, gui = "reverse" },

        -- }}}
        -- {{{ Messages

        Error { DiffDelete },
        ErrorMsg { DiffDelete },
        ModeMsg { fg = DiffDelete.fg.rotate(225).lighten(step) },
        MoreMsg { ModeMsg },
        WarningMsg { fg = DiffDelete.fg.rotate(45).lighten(step) },
        lualine_x_diagnostics_error_terminal { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_inactive { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_replace { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_command { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_visual { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_insert { fg = DiffDelete.fg },
        lualine_x_diagnostics_error_normal { fg = DiffDelete.fg },

        -- }}}
        -- {{{ Visual

        Visual { bg = colorf3.darken(step) },
        VisualNOS { Visual },

        -- }}}
        -- {{{ Pmenu

        Pmenu { WildMenu },
        PmenuSbar { bg = Pmenu.bg.darken(step).lighten(step) },
        PmenuSel { fg = colorf5, bg = PmenuSbar.bg },
        PmenuThumb { bg = PmenuSbar.bg.darken(step).lighten(step) },

        -- }}}
        -- {{{ Spell

        SpellBad { DiffDelete, gui = "underdashed" },
        SpellCap { gui = "underdouble" },
        SpellLocal { gui = "underdashed" },
        SpellRare { gui = "underdotted" },

        -- }}}
        -- {{{ Quickfix

        qfLineNr { LineNr },
        qfSeparator { VertSplit },

        -- }}}
        -- {{{ LSP

        DiagnosticSignError { DiffDelete },
        DiagnosticSignWarn { WarningMsg },
        DiagnosticSignInfo { ModeMsg },
        DiagnosticSignHint { DiffAdd },
        DiagnosticVirtualTextError { DiffDelete },
        DiagnosticVirtualTextWarn { WarningMsg },
        DiagnosticVirtualTextInfo { ModeMsg },
        DiagnosticVirtualTextHint { DiffAdd },

        -- }}}
        -- {{{ Plugin: vim-lightspeed

        LightspeedLabel { gui = "none" },
        LightspeedLabelDistant { gui = "bold" },
        LightspeedMaskedChar { fg = colorf3 },
        LightspeedUnlabeledMatch {},
        LightspeedGreyWash { fg = colorf4 },

        -- }}}
        -- {{{ Plugin: vim-signify

        SignifySignAdd { DiffAdd },
        SignifySignDelete { DiffDelete },
        SignifySignChange { WarningMsg },

        -- }}}
        -- {{{ Plugin: git-signs

        GitSignsAdd { fg = DiffAdd.fg, bg = LineNr.bg },
        GitSignsChange { fg = WarningMsg.fg, bg = LineNr.bg },
        GitSignsDelete { fg = DiffDelete.fg, bg = LineNr.bg },
        GitSignsAddNr { GitSignsAdd },
        GitSignsChangeNr { GitSignsChange },
        GitSignsDeleteNr { GitSignsDelete },
        GitSignsAddLn { GitSignsAdd },
        GitSignsChangeLn { GitSignsChange },
        GitSignsDeleteLn { GitSignsDelete },

        -- }}}
        -- {{{ Plugin: vim-startify

        StartifyBracket {},
        StartifyFile { Normal, gui = "bold" },
        StartifyFooter { fg = colorp1 },
        StartifyHeader { StartifyFooter },
        StartifyNumber { Constant },
        StartifyPath { fg = colorf3 },
        StartifySection { Normal },
        --StartifySelect { gui = "italic" },
        StartifySlash { StartifyPath },
        StartifySpecial { fg = colorf3 },

        -- }}}
        -- {{{ Neovim

        TermCursor { bg = Normal.fg },
        TermCursorNC { bg = colorf4 },

        -- }}}
        -- {{{ HTML

        markdownCode { Constant },
        htmlItalic { gui = "italic" },
        htmlBold { gui = "bold" },
        htmlTagName { Identifier },
        htmlTagN { htmlTagName },

        -- }}}
        -- {{{ Plugin: cmp

        CmpItemKindDefault { Pmenu },

        -- }}}
    }
end)

return theme
