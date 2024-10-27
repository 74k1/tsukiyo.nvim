{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/telescope.lua << 'EOFTELE'
  return function(c, bg)
      return {
          -- Borders
          TelescopeBorder = { fg = c.base0D, bg = bg },
          TelescopePromptBorder = { fg = c.base0D, bg = c.base01 },
          TelescopeResultsBorder = { fg = c.base0D, bg = bg },
          TelescopePreviewBorder = { fg = c.base0D, bg = bg },
          
          -- Normal text
          TelescopeNormal = { fg = c.base05, bg = bg },
          TelescopePromptNormal = { fg = c.base05, bg = c.base01 },
          TelescopeResultsNormal = { fg = c.base05, bg = bg },
          TelescopePreviewNormal = { fg = c.base05, bg = bg },
          
          -- Selection
          TelescopeSelection = { fg = c.base05, bg = c.base02 },
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
