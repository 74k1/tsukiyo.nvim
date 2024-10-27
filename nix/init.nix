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
          Normal = { fg = colors.base05, bg = bg },
          NormalFloat = { fg = colors.base05, bg = bg },
          Comment = { fg = colors.base03, italic = true },
          CursorLine = { bg = colors.base01 },
          CursorLineNr = { fg = colors.base05 },
          LineNr = { fg = colors.base03 },
          Search = { fg = colors.base00, bg = colors.base0A },
          IncSearch = { fg = colors.base00, bg = colors.base0A },
          -- Add more core highlights here
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
    base18 = "${colors.base18}",
    base19 = "${colors.base19}",
    base20 = "${colors.base20}",
    base21 = "${colors.base21}",
    base22 = "${colors.base22}",
    base23 = "${colors.base23}",
  }
  EOFCOL
''
