local M = {}

M.setup = function(colors, bg)
    -- Core highlighting
    local highlights = {
        Normal = { fg = colors.base05, bg = "NONE" },
        NormalFloat = { fg = colors.base05, bg = "NONE" },
        NormalNC = { fg = colors.base05, bg = "NONE" },
        
        -- Editor
        Cursor = { fg = colors.base00, bg = colors.base05 },
        CursorLine = { bg = "NONE" },
        CursorLineNr = { fg = colors.base0D, bold = true },
        LineNr = { fg = colors.base03 },
        SignColumn = { fg = colors.base03, bg = "NONE" },
        ColorColumn = { bg = colors.base01 },
        VertSplit = { fg = colors.base02, bg = "NONE" },
        Folded = { fg = colors.base03, italic = true },
        FoldColumn = { fg = colors.base03, bg = "NONE" },
        
        -- Selection
        Visual = { bg = colors.base02 },
        VisualNOS = { bg = colors.base02 },
        Search = { fg = colors.base00, bg = colors.base0A },
        IncSearch = { fg = colors.base00, bg = colors.base09 },
        CurSearch = { fg = colors.base00, bg = colors.base0A },
        
        -- Statusline
        StatusLine = { fg = colors.base05, bg = "NONE" },
        StatusLineNC = { fg = colors.base03, bg = "NONE" },
        WinBar = { fg = colors.base0D, bg = "NONE", bold = true },
        WinBarNC = { fg = colors.base03, bg = "NONE" },
        
        -- Sidebar
        PMenu = { fg = colors.base05, bg = colors.base01 },
        PMenuSel = { fg = colors.base00, bg = colors.base0D },
        PMenuSBar = { bg = colors.base02 },
        PMenuThumb = { bg = colors.base04 },
        
        -- Messages
        ErrorMsg = { fg = colors.base08, bold = true },
        WarningMsg = { fg = colors.base0A, bold = true },
        MoreMsg = { fg = colors.base0B },
        Question = { fg = colors.base0D },
        Directory = { fg = colors.base0D },
        
        -- Syntax
        Comment = { fg = colors.base03, italic = true },
        NonText = { fg = colors.base03 },
        SpecialKey = { fg = colors.base03 },
        Whitespace = { fg = colors.base02 },
        
        Constant = { fg = colors.base09 },
        String = { fg = colors.base0B },
        Character = { fg = colors.base0B },
        Number = { fg = colors.base09 },
        Boolean = { fg = colors.base09 },
        Float = { fg = colors.base09 },
        
        Identifier = { fg = colors.base08 },
        Function = { fg = colors.base0D },
        
        Statement = { fg = colors.base0E },
        Conditional = { fg = colors.base0E },
        Repeat = { fg = colors.base0E },
        Label = { fg = colors.base0E },
        Operator = { fg = colors.base05 },
        Keyword = { fg = colors.base0E },
        Exception = { fg = colors.base08 },
        
        PreProc = { fg = colors.base0A },
        Include = { fg = colors.base0A },
        Define = { fg = colors.base0E },
        Macro = { fg = colors.base08 },
        PreCondit = { fg = colors.base0A },
        
        Type = { fg = colors.base0A },
        StorageClass = { fg = colors.base0A },
        Structure = { fg = colors.base0A },
        Typedef = { fg = colors.base0A },
        
        Special = { fg = colors.base0C },
        SpecialChar = { fg = colors.base0C },
        Tag = { fg = colors.base0A },
        Delimiter = { fg = colors.base05 },
        SpecialComment = { fg = colors.base03, italic = true },
        Debug = { fg = colors.base08 },
        
        -- Diffs
        DiffAdd = { fg = colors.base0B, bg = "NONE" },
        DiffChange = { fg = colors.base0E, bg = "NONE" },
        DiffDelete = { fg = colors.base08, bg = "NONE" },
        DiffText = { fg = colors.base0D, bg = "NONE" },
        
        -- Spellchecking
        SpellBad = { sp = colors.base08, undercurl = true },
        SpellCap = { sp = colors.base0A, undercurl = true },
        SpellRare = { sp = colors.base0C, undercurl = true },
        SpellLocal = { sp = colors.base0D, undercurl = true },
        
        -- Floating windows
        FloatBorder = { fg = colors.base0D, bg = "NONE" },
        FloatTitle = { fg = colors.base0D, bold = true },
        
        -- Misc
        Title = { fg = colors.base0D, bold = true },
        Bold = { bold = true },
        Italic = { italic = true },
        Underlined = { fg = colors.base0C, underline = true },
        
        -- Git signs
        GitSignsAdd = { fg = colors.base0B, bg = "NONE" },
        GitSignsChange = { fg = colors.base0E, bg = "NONE" },
        GitSignsDelete = { fg = colors.base08, bg = "NONE" },
        
        -- Diagnostics
        DiagnosticError = { fg = colors.base08 },
        DiagnosticWarn = { fg = colors.base0A },
        DiagnosticInfo = { fg = colors.base0D },
        DiagnosticHint = { fg = colors.base0C },
        
        DiagnosticSignError = { fg = colors.base08, bg = "NONE" },
        DiagnosticSignWarn = { fg = colors.base0A, bg = "NONE" },
        DiagnosticSignInfo = { fg = colors.base0D, bg = "NONE" },
        DiagnosticSignHint = { fg = colors.base0C, bg = "NONE" },
        
        -- Tabs
        TabLine = { fg = colors.base03, bg = "NONE" },
        TabLineFill = { fg = colors.base03, bg = "NONE" },
        TabLineSel = { fg = colors.base05, bg = "NONE", bold = true },
    }

    -- Load plugin highlights
    local plugin_groups = {
        require('yueye.highlights.plugins.cmp'),
        require('yueye.highlights.plugins.dadbod'),
        require('yueye.highlights.plugins.indent-blankline'),
        require('yueye.highlights.plugins.indentmini'),
        require('yueye.highlights.plugins.mini-indentscope'),
        require('yueye.highlights.plugins.lsp'),
        require('yueye.highlights.plugins.oil'),
        require('yueye.highlights.plugins.telescope'),
        require('yueye.highlights.plugins.fidget'),
        require('yueye.highlights.plugins.treesitter'),
    }

    -- Merge plugin highlights
    for _, group in ipairs(plugin_groups) do
        local plugin_hl = group(colors, bg)
        for hl_group, hl_settings in pairs(plugin_hl) do
            highlights[hl_group] = hl_settings
        end
    end

    return highlights
end

return M
