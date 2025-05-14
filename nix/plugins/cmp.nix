{ colors }:
''
  cat > $out/lua/yueye/highlights/plugins/cmp.lua << 'EOFCMP'
  return function(c, bg)
      return {
          CmpItemAbbr = { fg = c.base05 },
          CmpItemAbbrDeprecated = { fg = c.base03, strikethrough = true },
          CmpItemAbbrMatch = { fg = c.base0D, bold = true },
          CmpItemAbbrMatchFuzzy = { fg = c.base0D, bold = true },
          CmpItemKind = { fg = c.base0E },
          CmpItemMenu = { fg = c.base04 },
          
          -- Kinds
          CmpItemKindClass = { fg = c.base0A },
          CmpItemKindColor = { fg = c.base0C },
          CmpItemKindConstant = { fg = c.base09 },
          CmpItemKindConstructor = { fg = c.base0D },
          CmpItemKindEnum = { fg = c.base0A },
          CmpItemKindEnumMember = { fg = c.base0B },
          CmpItemKindEvent = { fg = c.base0A },
          CmpItemKindField = { fg = c.base08 },
          CmpItemKindFile = { fg = c.base05 },
          CmpItemKindFolder = { fg = c.base05 },
          CmpItemKindFunction = { fg = c.base0D },
          CmpItemKindInterface = { fg = c.base0A },
          CmpItemKindKeyword = { fg = c.base0E },
          CmpItemKindMethod = { fg = c.base0D },
          CmpItemKindModule = { fg = c.base0A },
          CmpItemKindOperator = { fg = c.base05 },
          CmpItemKindProperty = { fg = c.base08 },
          CmpItemKindReference = { fg = c.base05 },
          CmpItemKindSnippet = { fg = c.base0C },
          CmpItemKindStruct = { fg = c.base0A },
          CmpItemKindText = { fg = c.base05 },
          CmpItemKindTypeParameter = { fg = c.base08 },
          CmpItemKindUnit = { fg = c.base0B },
          CmpItemKindValue = { fg = c.base09 },
          CmpItemKindVariable = { fg = c.base08 },
      }
  end
  EOFCMP
''
