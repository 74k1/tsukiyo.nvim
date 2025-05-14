{ colors }:
''
  cat > $out/lua/yueye/highlights/plugins/lsp.lua << 'EOFLSP'
  return function(c, bg)
      return {
          -- Diagnostics
          DiagnosticError = { fg = c.base08 },
          DiagnosticWarn = { fg = c.base0A },
          DiagnosticInfo = { fg = c.base0D },
          DiagnosticHint = { fg = c.base0C },
          
          DiagnosticVirtualTextError = { fg = c.base08, bg = c.base01 },
          DiagnosticVirtualTextWarn = { fg = c.base0A, bg = c.base01 },
          DiagnosticVirtualTextInfo = { fg = c.base0D, bg = c.base01 },
          DiagnosticVirtualTextHint = { fg = c.base0C, bg = c.base01 },
          
          DiagnosticUnderlineError = { sp = c.base08, undercurl = true },
          DiagnosticUnderlineWarn = { sp = c.base0A, undercurl = true },
          DiagnosticUnderlineInfo = { sp = c.base0D, undercurl = true },
          DiagnosticUnderlineHint = { sp = c.base0C, undercurl = true },
          
          -- References & Signs
          LspReferenceText = { bg = c.base02 },
          LspReferenceRead = { bg = c.base02 },
          LspReferenceWrite = { bg = c.base02 },
          
          LspSignatureActiveParameter = { fg = c.base0A, bold = true },
          LspCodeLens = { fg = c.base04 },
          LspCodeLensSeparator = { fg = c.base03 },
          
          -- Floating windows
          LspFloatWinNormal = { fg = c.base05, bg = bg },
          LspFloatWinBorder = { fg = c.base0D },
          
          -- Inlay hints
          LspInlayHint = { fg = c.base03, italic = true },
      }
  end
  EOFLSP
''
