{ colors }:
''
cat > $out/lua/tsukiyo/highlights/plugins/mini-indentscope.lua <<'EOF'
return function(c, bg)
    return {
        -- mini.indentscope
        MiniIndentscopeSymbol = { fg = c.base03 },
        MiniIndentscopePrefix = { sp = c.base03, nocombine = true },
    }
end
EOF
''
