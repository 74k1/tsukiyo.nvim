{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/fidget.lua << 'EOFFIDGET'
  return function(c, bg)
      return {
          -- Main notification styling
          FidgetTask = { fg = c.base04, bg = "NONE" },
          FidgetTitle = { fg = c.base0D, bg = "NONE", bold = true },
          
          -- Progress styling
          FidgetProgress = { fg = c.base0B, bg = "NONE" },
          
          -- Status indicators
          FidgetDone = { fg = c.base0B, bg = "NONE" },
          FidgetError = { fg = c.base08, bg = "NONE" },
          FidgetWarning = { fg = c.base0A, bg = "NONE" },
          FidgetInfo = { fg = c.base0C, bg = "NONE" },
      }
  end
  EOFFIDGET
''
