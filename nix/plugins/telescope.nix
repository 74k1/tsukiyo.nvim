{ colors }:
''
  cat > $out/lua/yueye/highlights/plugins/telescope.lua << 'EOFTELE'
  return function(c, bg)
      return {
          -- Borders
          TelescopeBorder = { fg = c.base0D, bg = "NONE" },
          TelescopePromptBorder = { fg = c.base0D, bg = "NONE" },
          TelescopeResultsBorder = { fg = c.base0D, bg = "NONE" },
          TelescopePreviewBorder = { fg = c.base0D, bg = "NONE" },
          
          -- Normal text
          TelescopeNormal = { fg = c.base05, bg = "NONE" },
          TelescopePromptNormal = { fg = c.base05, bg = "NONE" },
          TelescopeResultsNormal = { fg = c.base05, bg = "NONE" },
          TelescopePreviewNormal = { fg = c.base05, bg = "NONE" },
          
          -- Selection
          TelescopeSelection = { fg = c.base0D, bg = c.base02 },
          TelescopeSelectionCaret = { fg = c.base0D, bg = c.base02 },
          TelescopeMultiSelection = { fg = c.base0E, bg = c.base02 },
          
          -- Prompts
          TelescopePromptPrefix = { fg = c.base08 },
          TelescopeMatching = { fg = c.base0D, bold = true },
          
          -- Titles
          TelescopeTitle = { fg = c.base00, bg = c.base0D },
          TelescopePreviewTitle = { fg = c.base00, bg = c.base0B },
          TelescopePromptTitle = { fg = c.base00, bg = c.base08 },
          TelescopeResultsTitle = { fg = c.base00, bg = c.base0D },
      }
  end
  EOFTELE
''
