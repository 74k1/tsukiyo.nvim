{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/fidget.lua << 'EOFFIDGET'
  return function(c, bg)
      return {
          FidgetProgress = { fg = c.base0B, bg = "NONE" }
      }
  end
  EOFFIDGET
''
