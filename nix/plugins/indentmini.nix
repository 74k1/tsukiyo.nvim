{ colors }:
''
cat > $out/lua/tsukiyo/highlights/plugins/indentmini.lua <<'EOF'
return function(c, bg)
    return {
        IndentMiniLine = { fg = c.base02 },             -- Normal indentation line
        IndentMiniHighlight = { fg = c.base04 },        -- Highlighted/active indentation
        IndentMiniError = { fg = c.base08 },            -- Error indication
        IndentMiniStart = { sp = c.base04, underline = true }, -- Start of scope underline
        IndentMiniContext = { fg = c.base0D },          -- Context indication
        IndentMiniBlankline = { fg = c.base02 },        -- Blank line indicators
    }
end
EOF
''
