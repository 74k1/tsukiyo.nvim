{ colors }:
''
  cat > $out/lua/yueye/highlights/plugins/oil.lua << 'EOFOIL'
  return function(c, bg)
      return {
          OilDir = { fg = c.base0F },
          OilDirIcon = { fg = c.base0F },
          OilLink = { fg = c.base0C },
          OilLinkTarget = { fg = c.base0C, italic = true },
          OilCopy = { fg = c.base0A },
          OilMove = { fg = c.base08 },
          OilChange = { fg = c.base0E },
          OilCreate = { fg = c.base0B },
          OilDelete = { fg = c.base08 },
          OilPermissions = { fg = c.base03 },
          OilSize = { fg = c.base03 },
          OilTimestamp = { fg = c.base03 },
          
          -- Column headers
          OilTypeHeader = { fg = c.base0D, bold = true },
          OilSizeHeader = { fg = c.base0D, bold = true },
          OilPermissionsHeader = { fg = c.base0D, bold = true },
          OilMtimeHeader = { fg = c.base0D, bold = true },
      }
  end
  EOFOIL
''
