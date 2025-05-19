local M = {}

M.setup = function(yy)
    -- Core highlighting
    local highlights = {
        Normal = { fg = yy.fg01, bg = yy.bg00 },
        NormalFloat = { fg = yy.fg00, bg = yy.fg02 },
        NormalNC = { fg = yy.fg03, bg = yy.bg00 },
        
        -- Editor
        Cursor = { fg = yy.bg00, bg = yy.fg01 },
        CursorLine = { fg = yy.none, bg = yy.bg01 },
        CursorLineNr = { fg = yy.fg01, bg = yy.none },
        LineNr = { fg = yy.fg03, bg = yy.bg00 },
        SignColumn = { fg = yy.bg01, bg = yy.bg00 },
        ColorColumn = { fg = yy.none, bg = yy.bg01 },
        VertSplit = { fg = yy.bg02, bg = yy.bg00 },
        Folded = { fg = yy.bg02, bg = yy.bg01, italic = true },
        FoldColumn = { fg = yy.bg01, bg = yy.bg00 },
        
        -- Selection
        Visual = { fg = yy.none, bg = yy.bg02 },
        VisualNOS = { fg = yy.none, bg = yy.bg02 },
        Search = { fg = yy.bg01, bg = yy.base04 },
        IncSearch = { fg = yy.fg00, bg = yy.base06 },
        
        -- Statusline
        StatusLine = { fg = yy.fg03, bg = yy.bg00 },
        StatusLineNC = { fg = yy.fg03, bg = yy.bg01 },
        
        -- Sidebar
        PMenu = { fg = yy.fg03, bg = yy.bg01 },
        PMenuSel = { fg = yy.base04, bg = yy.bg02 },
        PMenuSbar = { fg = yy.fg03, bg = yy.bg01 },
        PMenuThumb = { fg = yy.base04, bg = yy.bg02 },
        
        -- Messages
        ErrorMsg = { fg = yy.base08, bg = yy.none, bold = true },
        ModeMsg = { fg = yy.fg03, bg = yy.none},
        Substitute = { fg = yy.bg01, bg = yy.base04 },
        WildMenu = { fg = yy.base04, bg = yy.bg01 },
        WarningMsg = { fg = yy.base03, bg = yy.none, bold = true },
        MoreMsg = { fg = yy.base04, bg = yy.none },
        Question = { fg = yy.fg03, bg = yy.none },
        Directory = { fg = yy.base04, bg = yy.none },
        
        -- Syntax
        Comment = { fg = yy.bg03, bg = yy.none, italic = true },
        NonText = { fg = yy.bg02, bg = yy.none },
        SpecialKey = { fg = yy.bg03, bg = yy.none },
        
        Constant = { fg = yy.fg03, bg = yy.none },
        String = { fg = yy.base02, bg = yy.none },
        Character = { fg = yy.base02, bg = yy.none },
        Number = { fg = yy.base06, bg = yy.none },
        Boolean = { fg = yy.base05, bg = yy.none },
        Float = { link = "Number" },
        
        Function = { fg = yy.base04, bg = yy.none },
        Identifier = { fg = yy.fg03, bg = yy.none },
        
        Statement = { fg = yy.base06, bg = yy.none },
        Conditional = { fg = yy.base06, bg = yy.none },
        Repeat = { fg = yy.base06, bg = yy.none },
        Label = { fg = yy.base06, bg = yy.none },
        Operator = { fg = yy.base06, bg = yy.none },
        Keyword = { fg = yy.base06, bg = yy.none },
        Exception = { fg = yy.base06, bg = yy.none },
        
        PreProc = { fg = yy.base06, bg = yy.none },
        Include = { fg = yy.base06, bg = yy.none },
        Define = { fg = yy.base06, bg = yy.none },
        Macro = { fg = yy.base12, bg = yy.none },
        
        Type = { fg = yy.base06, bg = yy.none },
        StorageClass = { fg = yy.base06, bg = yy.none },
        Structure = { fg = yy.base06, bg = yy.none },
        Tag = { fg = yy.fg03, bg = yy.none },
        Todo = { fg = yy.base11, bg = yy.none },
        Typedef = { fg = yy.base06, bg = yy.none },
        
        Special = { fg = yy.fg03, bg = yy.none },
        SpecialChar = { fg = yy.fg03, bg = yy.none },
        Tag = { fg = yy.base04, bg = yy.none },
        SpecialComment = { fg = yy.base04, bg = yy.none, italic = true },
        Debug = { fg = yy.base11, bg = yy.none },
        
        -- Diffs
        DiffAdded = { fg = yy.base02, bg = yy.none },
        DiffChanged = { fg = yy.base03, bg = yy.none },
        DiffRemoved = { fg = yy.base01, bg = yy.none },
        DiffAdd = { fg = yy.base02, bg = yy.none },
        DiffChange = { fg = yy.base03, bg = yy.none },
        DiffDelete = { fg = yy.base01 , bg = yy.none },
        DiffText = { fg = yy.fg02 , bg = yy.none },
        
        -- Spellchecking
        SpellBad = { sp = yy.base01, undercurl = true },
        SpellCap = { sp = yy.base03, undercurl = true },
        SpellRare = { sp = yy.base06, undercurl = true },
        SpellLocal = { sp = yy.base04, undercurl = true },
        
        -- Floating windows
        FloatBorder = { fg = yy.fg02, bg = yy.fg02 },
        -- FloatTitle = { fg = yy.base04, bold = true },
        
        -- Misc
        Text = { fg = yy.fg03, bg = yy.none, bold = true },
        Bold = { fg = yy.none, bg = yy.none, bold = true },
        Italic = { fg = yy.none, bg = yy.none, italic = true },
        Underlined = { fg = yy.none, bg = yy.none, underline = true },
        
        -- Git signs
        -- GitSignsAdd = { fg = yy.base02, bg = "NONE" },
        -- GitSignsChange = { fg = yy.base03, bg = "NONE" },
        -- GitSignsDelete = { fg = yy.base01, bg = "NONE" },
        
        -- Diagnostics
        DiagnosticError = { fg = yy.base01, bg = yy.none },
        DiagnosticWarn = { fg = yy.base02, bg = yy.none },
        DiagnosticInfo = { fg = yy.base12, bg = yy.none },
        DiagnosticHint = { fg = yy.fg03, bg = yy.none },
        
        -- Tabs
        TabLine = { link = "StatusLineNC" },
        TabLineFill = { link = "TabLine" },
        TabLineSel = { link = "StatusLine" },
    }

    -- Load plugin highlights
    -- local plugin_groups = {
    --     require('yueye.highlights.plugins.cmp'),
    --     require('yueye.highlights.plugins.dadbod'),
    --     require('yueye.highlights.plugins.indent-blankline'),
    --     require('yueye.highlights.plugins.indentmini'),
    --     require('yueye.highlights.plugins.mini-indentscope'),
    --     require('yueye.highlights.plugins.lsp'),
    --     require('yueye.highlights.plugins.oil'),
    --     require('yueye.highlights.plugins.telescope'),
    --     require('yueye.highlights.plugins.fidget'),
    --     require('yueye.highlights.plugins.treesitter'),
    -- }

    -- Merge plugin highlights
    -- for _, group in ipairs(plugin_groups) do
    --     local plugin_hl = group(colors, bg)
    --     for hl_group, hl_settings in pairs(plugin_hl) do
    --         highlights[hl_group] = hl_settings
    --     end
    -- end

    return highlights
end

return M
