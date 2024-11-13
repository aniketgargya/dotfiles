vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        view = {
            width = 35,
            relativenumber = true,
        },
        renderer = {
            indent_markers = {
                enable = true,
            },
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
                    },
                },
            },
        },
        actions = {
            open_file = {
                window_picker = {
                    enable = false,
                },
            },
        },
        filters = {
            custom = { ".DS_Store" },
        },
        git = {
            ignore = false,
        },
        disable_netrw = true,
    },
    keys = {
        { "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" } },
        { "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus on file explorer" } },
        { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" } },
        { "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" } },
    }
}

