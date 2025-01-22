return {
    "akinsho/toggleterm.nvim",
    opts = {
        open_mapping = { "<c-t>" },
        direction = "float",
    },
    keys = {
        { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Terminal" },
        { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
        { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
        { "<leader>gl", "<cmd>lua require(\"toggleterm.terminal\").Terminal:new({ cmd = \"lazygit\", hidden = true }):toggle()<cr>", desc = "LazyGit" },
    },
}

