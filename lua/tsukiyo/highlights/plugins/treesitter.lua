return function(c, bg)
    return {
        -- Misc
        ["@comment"] = { fg = c.base03, italic = true },
        ["@error"] = { fg = c.base08 },
        ["@preproc"] = { fg = c.base0E },
        ["@define"] = { fg = c.base0E },
        
        -- Commands and operations (Green)
        ["@keyword.operator"] = { fg = c.base09 },
        ["@operator"] = { fg = c.base09 },
        
        -- Punctuation
        ["@punctuation.delimiter"] = { fg = c.base05 },
        ["@punctuation.bracket"] = { fg = c.base05 },
        ["@punctuation.special"] = { fg = c.base0F },
        
        -- Literals (Indigo for strings)
        ["@string"] = { fg = c.base0B },
        ["@string.regex"] = { fg = c.base0B },
        ["@string.escape"] = { fg = c.base0E },
        ["@string.special"] = { fg = c.base0E },
        
        ["@character"] = { fg = c.base0B },
        ["@character.special"] = { fg = c.base0E },
        
        ["@boolean"] = { fg = c.base09 },
        ["@number"] = { fg = c.base09 },
        ["@float"] = { fg = c.base09 },
        
        -- Functions (Cyan)
        ["@function"] = { fg = c.base0C },
        ["@function.builtin"] = { fg = c.base0C },
        ["@function.call"] = { fg = c.base0C },
        ["@function.macro"] = { fg = c.base08 },
        
        ["@method"] = { fg = c.base0C },
        ["@method.call"] = { fg = c.base0C },
        
        ["@constructor"] = { fg = c.base08 },
        ["@parameter"] = { fg = c.base08, italic = true },
        
        -- Keywords (Blue)
        ["@keyword"] = { fg = c.base0D },
        ["@keyword.function"] = { fg = c.base0D },
        ["@keyword.return"] = { fg = c.base0D },
        
        ["@conditional"] = { fg = c.base0D },
        ["@repeat"] = { fg = c.base0D },
        ["@debug"] = { fg = c.base08 },
        ["@label"] = { fg = c.base0A },
        ["@include"] = { fg = c.base0A },
        ["@exception"] = { fg = c.base08 },
        
        -- Types (Red, used sparingly)
        ["@type"] = { fg = c.base08 },
        ["@type.builtin"] = { fg = c.base08 },
        ["@type.qualifier"] = { fg = c.base0A },
        ["@type.definition"] = { fg = c.base0A },
        
        ["@storageclass"] = { fg = c.base0A },
        ["@attribute"] = { fg = c.base0A },
        ["@field"] = { fg = c.base0A },
        ["@property"] = { fg = c.base0A },
        
        -- Identifiers
        ["@variable"] = { fg = c.base05 },
        ["@variable.builtin"] = { fg = c.base09 },
        
        ["@constant"] = { fg = c.base09 },
        ["@constant.builtin"] = { fg = c.base09 },
        ["@constant.macro"] = { fg = c.base09 },
        
        ["@namespace"] = { fg = c.base08 },
        ["@symbol"] = { fg = c.base0B },
        
        -- Text
        ["@text"] = { fg = c.base05 },
        ["@text.strong"] = { bold = true },
        ["@text.emphasis"] = { italic = true },
        ["@text.underline"] = { underline = true },
        ["@text.strike"] = { strikethrough = true },
        ["@text.title"] = { fg = c.base0D, bold = true },
        ["@text.literal"] = { fg = c.base09 },
        ["@text.uri"] = { fg = c.base09, underline = true },
        
        ["@text.diff.add"] = { fg = c.base0B },
        ["@text.diff.delete"] = { fg = c.base08 },
        
        -- Tags
        ["@tag"] = { fg = c.base0A },
        ["@tag.attribute"] = { fg = c.base08 },
        ["@tag.delimiter"] = { fg = c.base0F },
    }
end
