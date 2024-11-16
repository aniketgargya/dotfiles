return {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "moll/vim-bbye",
    },
    opts = {
        options = {
            offsets = {
                { filetype = "NvimTree", text = "", padding = 1 },
            },
            separator_style = "thick",
            show_buffer_close_icons = false,
            buffer_background = "#000000",
            buffer_foreground = "#ffffff",
            sort_by = "insert_after_current",
        },
    },
    keys = {
        { "<leader>bo", "<cmd>enew<CR>", desc = "Open new buffer" },
        { "<leader>bx", "<cmd>bd<CR>", desc = "Close current buffer" },
        { "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", desc = "Go to previous buffer" },
        { "<leader>bn", "<cmd>BufferLineCycleNext<CR>", desc = "Go to next buffer" },
        { "H", "<cmd>BufferLineCyclePrev<CR>", desc = "Go to previous buffer" },
        { "L", "<cmd>BufferLineCycleNext<CR>", desc = "Go to next buffer" },
    },
}

