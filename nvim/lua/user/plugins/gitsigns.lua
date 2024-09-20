return {
    "lewis6991/gitsigns.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local gitsigns = require('gitsigns')

        gitsigns.setup({})

        vim.cmd("Gitsigns toggle_current_line_blame")
    end,
}

