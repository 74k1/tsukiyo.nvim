{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/cmp.lua << 'EOFCMP'
  return function(c, bg)
      return {
          CmpItemAbbr = { fg = c.base05 },
          CmpItemAbbrDeprecated = { fg = c.base03, strikethrough = true },
          CmpItemAbbrMatch = { fg = c.base15, bold = true },
          CmpItemAbbrMatchFuzzy = { fg = c.base15, bold = true },
          CmpItemKind = { fg = c.base17 },
          CmpItemMenu = { fg = c.base04 },
          
          -- Kinds
          CmpItemKindClass = { fg = c.base13 },
          CmpItemKindColor = { fg = c.base0C },
          CmpItemKindConstant = { fg = c.base12 },
          CmpItemKindConstructor = { fg = c.base15 },
          CmpItemKindEnum = { fg = c.base13 },
          CmpItemKindEnumMember = { fg = c.base14 },
          CmpItemKindEvent = { fg = c.base0A },
          CmpItemKindField = { fg = c.base08 },
          CmpItemKindFile = { fg = c.base05 },
          CmpItemKindFolder = { fg = c.base05 },
          CmpItemKindFunction = { fg = c.base15 },
          CmpItemKindInterface = { fg = c.base13 },
          CmpItemKindKeyword = { fg = c.base17 },
          CmpItemKindMethod = { fg = c.base15 },
          CmpItemKindModule = { fg = c.base13 },
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
