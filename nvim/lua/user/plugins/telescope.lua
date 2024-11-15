return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({})

        telescope.load_extension("fzf")
    end,
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
        { "<leader>p", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Fuzzy find recent files" },
        { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find string in cwd" },
        { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
    }
}

