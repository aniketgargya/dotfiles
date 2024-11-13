return {
    "lewis6991/gitsigns.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function(gitsigns, opts)
        require('gitsigns').setup(opts)

        vim.cmd("Gitsigns toggle_current_line_blame")
    end,
}

