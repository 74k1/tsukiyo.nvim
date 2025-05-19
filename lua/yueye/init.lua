local M = {}

M.setup = function(opts)

    local yy = require('yueye.colors')

    -- Load and apply highlights
    local highlights = require('yueye.highlights').setup(yy)
    
    vim.o.termguicolors = true
    vim.g.colors_name = 'yueye'

    -- Set highlights
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
