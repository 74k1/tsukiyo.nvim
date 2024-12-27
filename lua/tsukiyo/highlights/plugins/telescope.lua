return function(c, bg)
    return {
        -- Borders
        TelescopeBorder = { fg = c.base0D, bg = c.base10 },
        TelescopePromptBorder = { fg = c.base0D, bg = c.base11 },
        TelescopeResultsBorder = { fg = c.base0D, bg = c.base10 },
        TelescopePreviewBorder = { fg = c.base0D, bg = c.base10 },
        
        -- Normal text
        TelescopeNormal = { fg = c.base05, bg = c.base10 },
        TelescopePromptNormal = { fg = c.base05, bg = c.base11 },
        TelescopeResultsNormal = { fg = c.base05, bg = c.base10 },
        TelescopePreviewNormal = { fg = c.base05, bg = c.base10 },
        
        -- Selection
        TelescopeSelection = { fg = c.base0D, bg = c.base02 },
        TelescopeSelectionCaret = { fg = c.base0D, bg = c.base02 },
        TelescopeMultiSelection = { fg = c.base0E, bg = c.base02 },
        
        -- Prompts
        TelescopePromptPrefix = { fg = c.base08 },
        TelescopeMatching = { fg = c.base0D, bold = true },
        
        -- Titles
        TelescopeTitle = { fg = c.base00, bg = c.base0D },
        TelescopePreviewTitle = { fg = c.base00, bg = c.base0B },
        TelescopePromptTitle = { fg = c.base00, bg = c.base08 },
        TelescopeResultsTitle = { fg = c.base00, bg = c.base0D },
    }
end
