{ colors }:
''
  cat > $out/lua/tsukiyo/highlights/plugins/dadbod.lua << 'EOFDAD'
  return function(c, bg)
      return {
          -- Main UI
          DbUI = { fg = c.base05, bg = bg },
          DbUITitle = { fg = c.base0D, bold = true },
          DbUISectionTitle = { fg = c.base0E, bold = true },
          
          -- Connection items
          DbUIConnectionName = { fg = c.base0B },
          DbUIConnectionNameSelected = { fg = c.base0B, bold = true },
          DbUIBufferName = { fg = c.base0E },
          DbUIBufferNameSelected = { fg = c.base0E, bold = true },
          
          -- Tables and schemas
          DbUITableName = { fg = c.base0A },
          DbUITableNameSelected = { fg = c.base0A, bold = true },
          DbUISchemaName = { fg = c.base0C },
          DbUISchemaNameSelected = { fg = c.base0C, bold = true },
          
          -- SQL specific
          DbUIOutputQuery = { fg = c.base05 },
          DbUIOutputTable = { fg = c.base0D },
          DbUIOutputCount = { fg = c.base0B },
          DbUIOutputError = { fg = c.base08 },
          
          -- Drawer
          DbUIDrawerClose = { fg = c.base08 },
          DbUIDrawerOpen = { fg = c.base0B },
          DbUIDrawerToggle = { fg = c.base0D },
      }
  end
  EOFDAD
''
