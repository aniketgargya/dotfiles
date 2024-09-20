return {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup {
            options = {
                offsets = {
                    { filetype = "NvimTree", text = "", padding = 1 },
                },
                separator_style = "thick",
                buffer_background = "#000000",
                buffer_foreground = "#ffffff",
            }
        }

        local keymap = vim.keymap

        keymap.set("n", "<leader>bo", "<cmd>enew<CR>", { desc = "Open new buffer" })
        keymap.set("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Close current buffer" })
        keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
        keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
        keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
        keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
    end
}

