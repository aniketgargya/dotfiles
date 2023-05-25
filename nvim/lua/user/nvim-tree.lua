local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local actions = require "telescope.actions"

nvim_tree.setup {
    view = {
        number = true,
        relativenumber = true,
    },
}

