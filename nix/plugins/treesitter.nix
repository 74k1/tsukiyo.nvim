{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/treesitter.lua << 'EOFTREE'
  return function(c, bg)
      return {
          -- Misc
          ["@comment"] = { fg = c.base03, italic = true },
          ["@error"] = { fg = c.base08 },
          ["@preproc"] = { fg = c.base0E },
          ["@define"] = { fg = c.base0E },
          ["@operator"] = { fg = c.base05 },
          
          -- Punctuation
          ["@punctuation.delimiter"] = { fg = c.base05 },
          ["@punctuation.bracket"] = { fg = c.base05 },
          ["@punctuation.special"] = { fg = c.base0F },
          
          -- Literals
          ["@string"] = { fg = c.base14 },
          ["@string.regex"] = { fg = c.base15 },
          ["@string.escape"] = { fg = c.base15 },
          ["@string.special"] = { fg = c.base0C },
          
          ["@character"] = { fg = c.base0B },
          ["@character.special"] = { fg = c.base0C },
          
          ["@boolean"] = { fg = c.base09 },
          ["@number"] = { fg = c.base09 },
          ["@float"] = { fg = c.base09 },
          
          -- Functions
          ["@function"] = { fg = c.base15 },
          ["@function.builtin"] = { fg = c.base15 },
          ["@function.call"] = { fg = c.base15 },
          ["@function.macro"] = { fg = c.base08 },
          
          ["@method"] = { fg = c.base15 },
          ["@method.call"] = { fg = c.base15 },
          
          ["@constructor"] = { fg = c.base0C },
          ["@parameter"] = { fg = c.base08, italic = true },
          
          -- Keywords
          ["@keyword"] = { fg = c.base17 },
          ["@keyword.function"] = { fg = c.base17 },
          ["@keyword.operator"] = { fg = c.base17 },
          ["@keyword.return"] = { fg = c.base17 },
          
          ["@conditional"] = { fg = c.base0E },
          ["@repeat"] = { fg = c.base0E },
          ["@debug"] = { fg = c.base08 },
          ["@label"] = { fg = c.base0A },
          ["@include"] = { fg = c.base0A },
          ["@exception"] = { fg = c.base08 },
          
          -- Types
          ["@type"] = { fg = c.base13 },
          ["@type.builtin"] = { fg = c.base13 },
          ["@type.qualifier"] = { fg = c.base0A },
          ["@type.definition"] = { fg = c.base0A },
          
          ["@storageclass"] = { fg = c.base0A },
          ["@attribute"] = { fg = c.base0A },
          ["@field"] = { fg = c.base08 },
          ["@property"] = { fg = c.base08 },
          
          -- Identifiers
          ["@variable"] = { fg = c.base05 },
          ["@variable.builtin"] = { fg = c.base12 },
          
          ["@constant"] = { fg = c.base12 },
          ["@constant.builtin"] = { fg = c.base12 },
          ["@constant.macro"] = { fg = c.base09 },
          
          ["@namespace"] = { fg = c.base08 },
          ["@symbol"] = { fg = c.base0B },
          
          -- Text
          ["@text"] = { fg = c.base05 },
          ["@text.strong"] = { bold = true },
          ["@text.emphasis"] = { italic = true },
          ["@text.underline"] = { underline = true },
          ["@text.strike"] = { strikethrough = true },
          ["@text.title"] = { fg = c.base0D, bold = true },
          ["@text.literal"] = { fg = c.base09 },
          ["@text.uri"] = { fg = c.base09, underline = true },
          
          ["@text.diff.add"] = { fg = c.base0B },
          ["@text.diff.delete"] = { fg = c.base08 },
          
          -- Tags
          ["@tag"] = { fg = c.base0A },
          ["@tag.attribute"] = { fg = c.base08 },
          ["@tag.delimiter"] = { fg = c.base0F },
      }
  end
  EOFTREE
''
