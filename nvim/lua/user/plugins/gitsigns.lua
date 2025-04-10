return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function(_, opts)
        require("gitsigns").setup(opts)

        vim.cmd("Gitsigns toggle_current_line_blame")
    end,
    keys = {
        { "<leader>gn", "<cmd>Gitsigns nav_hunk next<CR>", desc = "Navigate to next hunk" },
        { "<leader>gp", "<cmd>Gitsigns nav_hunk prev<CR>", desc = "Navigate to prev hunk" },
        { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset hunk" },
        { "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview hunk" },
        { "<leader>gb", "<cmd>Gitsigns blame_line<CR>", desc = "Preview blame" },
    },
}

