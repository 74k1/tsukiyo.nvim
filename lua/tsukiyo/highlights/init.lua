local M = {}

M.setup = function(colors, bg)
    -- Core highlighting
    local highlights = {
        Normal = { fg = colors.base05, bg = bg },
        NormalFloat = { fg = colors.base05, bg = bg },
        Comment = { fg = colors.base03, italic = true },
        CursorLine = { bg = colors.base01 },
        CursorLineNr = { fg = colors.base05 },
        LineNr = { fg = colors.base03 },
        Search = { fg = colors.base00, bg = colors.base0A },
        IncSearch = { fg = colors.base00, bg = colors.base0A },
        -- Add more core highlights here
    }

    -- Load plugin highlights
    local plugin_groups = {
        require('tsukiyo.highlights.plugins.cmp'),
        require('tsukiyo.highlights.plugins.dadbod'),
        require('tsukiyo.highlights.plugins.indent-blankline'),
        require('tsukiyo.highlights.plugins.indentmini'),
        require('tsukiyo.highlights.plugins.mini-indentscope'),
        require('tsukiyo.highlights.plugins.lsp'),
        require('tsukiyo.highlights.plugins.oil'),
        require('tsukiyo.highlights.plugins.telescope'),
        require('tsukiyo.highlights.plugins.treesitter'),
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
