{ colors }:
''
  # Generate init.lua
  cat > $out/lua/tsukiyo/init.lua << 'EOFINI'
  local M = {}

  M.setup = function(opts)
      opts = vim.tbl_deep_extend('force', {
          transparent = false,
      }, opts or {})

      local colors = require('tsukiyo.colors')
      local bg = opts.transparent and "NONE" or colors.base00
      
      -- Load and apply highlights
      local highlights = require('tsukiyo.highlights').setup(colors, bg)

      -- Clear existing highlights
      vim.cmd('highlight clear')
      if vim.fn.exists('syntax_on') then
          vim.cmd('syntax reset')
      end
      
      vim.o.termguicolors = true
      vim.g.colors_name = 'tsukiyo'

      -- Set highlights
      for group, settings in pairs(highlights) do
          vim.api.nvim_set_hl(0, group, settings)
      end
  end

  return M
  EOFINI

  # Generate highlights/init.lua
  cat > $out/lua/tsukiyo/highlights/init.lua << 'EOFHL'
  local M = {}

  M.setup = function(colors, bg)
      -- Core highlighting
      local highlights = {
          Normal = { fg = colors.base05, bg = "NONE" },
          NormalFloat = { fg = colors.base05, bg = "NONE" },
          NormalNC = { fg = colors.base05, bg = "NONE" },
          
          -- Editor
          Cursor = { fg = colors.base00, bg = colors.base05 },
          CursorLine = { bg = "NONE" },
          CursorLineNr = { fg = colors.base15, bold = true },
          LineNr = { fg = colors.base03 },
          SignColumn = { fg = colors.base03, bg = "NONE" },
          ColorColumn = { bg = colors.base01 },
          VertSplit = { fg = colors.base02, bg = "NONE" },
          Folded = { fg = colors.base03, italic = true },
          FoldColumn = { fg = colors.base03, bg = "NONE" },
          
          -- Selection
          Visual = { bg = colors.base02 },
          VisualNOS = { bg = colors.base02 },
          Search = { fg = colors.base00, bg = colors.base0A },
          IncSearch = { fg = colors.base00, bg = colors.base09 },
          CurSearch = { fg = colors.base00, bg = colors.base0A },
          
          -- Statusline
          StatusLine = { fg = colors.base05, bg = "NONE" },
          StatusLineNC = { fg = colors.base03, bg = "NONE" },
          WinBar = { fg = colors.base15, bg = "NONE", bold = true },
          WinBarNC = { fg = colors.base03, bg = "NONE" },
          
          -- Sidebar
          PMenu = { fg = colors.base05, bg = colors.base01 },
          PMenuSel = { fg = colors.base00, bg = colors.base0D },
          PMenuSBar = { bg = colors.base02 },
          PMenuThumb = { bg = colors.base04 },
          
          -- Messages
          ErrorMsg = { fg = colors.base08, bold = true },
          WarningMsg = { fg = colors.base0A, bold = true },
          MoreMsg = { fg = colors.base0B },
          Question = { fg = colors.base0D },
          Directory = { fg = colors.base0D },
          
          -- Syntax
          Comment = { fg = colors.base03, italic = true },
          NonText = { fg = colors.base03 },
          SpecialKey = { fg = colors.base03 },
          Whitespace = { fg = colors.base02 },
          
          Constant = { fg = colors.base09 },
          String = { fg = colors.base0B },
          Character = { fg = colors.base0B },
          Number = { fg = colors.base09 },
          Boolean = { fg = colors.base09 },
          Float = { fg = colors.base09 },
          
          Identifier = { fg = colors.base08 },
          Function = { fg = colors.base0D },
          
          Statement = { fg = colors.base0E },
          Conditional = { fg = colors.base0E },
          Repeat = { fg = colors.base0E },
          Label = { fg = colors.base0E },
          Operator = { fg = colors.base05 },
          Keyword = { fg = colors.base0E },
          Exception = { fg = colors.base08 },
          
          PreProc = { fg = colors.base0A },
          Include = { fg = colors.base0A },
          Define = { fg = colors.base0E },
          Macro = { fg = colors.base08 },
          PreCondit = { fg = colors.base0A },
          
          Type = { fg = colors.base0A },
          StorageClass = { fg = colors.base0A },
          Structure = { fg = colors.base0A },
          Typedef = { fg = colors.base0A },
          
          Special = { fg = colors.base0C },
          SpecialChar = { fg = colors.base0C },
          Tag = { fg = colors.base0A },
          Delimiter = { fg = colors.base05 },
          SpecialComment = { fg = colors.base03, italic = true },
          Debug = { fg = colors.base08 },
          
          -- Diffs
          DiffAdd = { fg = colors.base0B, bg = "NONE" },
          DiffChange = { fg = colors.base0E, bg = "NONE" },
          DiffDelete = { fg = colors.base08, bg = "NONE" },
          DiffText = { fg = colors.base0D, bg = "NONE" },
          
          -- Spellchecking
          SpellBad = { sp = colors.base08, undercurl = true },
          SpellCap = { sp = colors.base0A, undercurl = true },
          SpellRare = { sp = colors.base0C, undercurl = true },
          SpellLocal = { sp = colors.base0D, undercurl = true },
          
          -- Floating windows
          FloatBorder = { fg = colors.base0D, bg = "NONE" },
          FloatTitle = { fg = colors.base0D, bold = true },
          
          -- Misc
          Title = { fg = colors.base0D, bold = true },
          Bold = { bold = true },
          Italic = { italic = true },
          Underlined = { fg = colors.base0C, underline = true },
          
          -- Git signs
          GitSignsAdd = { fg = colors.base0B, bg = "NONE" },
          GitSignsChange = { fg = colors.base0E, bg = "NONE" },
          GitSignsDelete = { fg = colors.base08, bg = "NONE" },
          
          -- Diagnostics
          DiagnosticError = { fg = colors.base08 },
          DiagnosticWarn = { fg = colors.base0A },
          DiagnosticInfo = { fg = colors.base0D },
          DiagnosticHint = { fg = colors.base0C },
          
          DiagnosticSignError = { fg = colors.base08, bg = "NONE" },
          DiagnosticSignWarn = { fg = colors.base0A, bg = "NONE" },
          DiagnosticSignInfo = { fg = colors.base0D, bg = "NONE" },
          DiagnosticSignHint = { fg = colors.base0C, bg = "NONE" },
          
          -- Tabs
          TabLine = { fg = colors.base03, bg = "NONE" },
          TabLineFill = { fg = colors.base03, bg = "NONE" },
          TabLineSel = { fg = colors.base05, bg = "NONE", bold = true },
      }

      -- Load plugin highlights
      local plugin_groups = {
          require('tsukiyo.highlights.plugins.cmp'),
          require('tsukiyo.highlights.plugins.dadbod'),
          require('tsukiyo.highlights.plugins.indent-blankline'),
          require('tsukiyo.highlights.plugins.indentmini'),
          require('tsukiyo.highlights.plugins.mini-indentscope'),
          require('tsukiyo.highlights.plugins.lsp'),
          require('tsukiyo.highlights.plugins.oil'),
          require('tsukiyo.highlights.plugins.telescope'),
          require('tsukiyo.highlights.plugins.treesitter'),
      }

      -- Merge plugin highlights
      for _, group in ipairs(plugin_groups) do
          local plugin_hl = group(colors, bg)
          for hl_group, hl_settings in pairs(plugin_hl) do
              highlights[hl_group] = hl_settings
          end
      end

      return highlights
  end

  return M
  EOFHL

  # Generate colors.lua
  cat > $out/lua/tsukiyo/colors.lua << 'EOFCOL'
  return {
    base00 = "${colors.base00}",
    base01 = "${colors.base01}",
    base02 = "${colors.base02}",
    base03 = "${colors.base03}",
    base04 = "${colors.base04}",
    base05 = "${colors.base05}",
    base06 = "${colors.base06}",
    base07 = "${colors.base07}",
    base08 = "${colors.base08}",
    base09 = "${colors.base09}",
    base0A = "${colors.base0A}",
    base0B = "${colors.base0B}",
    base0C = "${colors.base0C}",
    base0D = "${colors.base0D}",
    base0E = "${colors.base0E}",
    base0F = "${colors.base0F}",
    base10 = "${colors.base10}",
    base11 = "${colors.base11}",
    base12 = "${colors.base12}",
    base13 = "${colors.base13}",
    base14 = "${colors.base14}",
    base15 = "${colors.base15}",
    base16 = "${colors.base16}",
    base17 = "${colors.base17}",
  }
  EOFCOL
''
