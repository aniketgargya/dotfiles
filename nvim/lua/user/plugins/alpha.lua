return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                              ‾‾\                   ]],
            [[                        . ---- .~\\<|               ]],
            [[       /~ ~ ~ ~\-------/        |~\\                ]],
            [[      |_.------.______/_\______/ / \\ _ _           ]],
            [[      /   - -// \    /[_]={==}=\/  /\\- -           ]],
            [[       /   _// \ \__/  O  |==| /  // \\-   \        ]],
            [[      |  | *-|--|-\ ( )*__(  )/   |  | * |  |       ]],
            [[       \   -  ~/~ ~ ~      ~~      \   -   /        ]],
            [[          - -                         - -           ]],
            [[                                                    ]],
            [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
            [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
            [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
            [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
            [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
            [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
            [[                                                    ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("p", "Find file", ":Telescope find_files <CR>"),
            dashboard.button("q", "Quit Neovim", ":qa<CR>"),
        }

        local function footer()
            return "Let's Write Some Bugs"
        end

        dashboard.section.footer.val = footer()

        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)

        vim.cmd("Alpha")
    end,
}

