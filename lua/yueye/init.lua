local M = {}

M.setup = function(opts)
    opts = vim.tbl_deep_extend('force', {
        transparent = false,
    }, opts or {})

    local colors = require('yueye.colors')
    local bg = opts.transparent and "NONE" or colors.base00
    
    -- Load and apply highlights
    local highlights = require('yueye.highlights').setup(colors, bg)

    -- Clear existing highlights
    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end
    
    vim.o.termguicolors = true
    vim.g.colors_name = 'yueye'

    -- Set highlights
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
