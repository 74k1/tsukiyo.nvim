{ colors }: 
/* bash */
''
cat > $out/lua/yueye/highlights/plugins/indent-blankline.lua <<'EOF'
return function(c, bg)
    return {
        -- indent-blankline.nvim
        IndentBlanklineChar = { fg = c.base02 },
        IndentBlanklineContextChar = { fg = c.base04 },
        IndentBlanklineContextStart = { sp = c.base04, underline = true },
        IndentBlanklineSpaceChar = { fg = c.base02 },
        IndentBlanklineSpaceCharBlankline = { fg = c.base02 },
    }
end
EOF
''
