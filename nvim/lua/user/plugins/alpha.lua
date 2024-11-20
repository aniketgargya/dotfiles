return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                                                                    ]],
            [[                                      ‾‾\                           ]],
            [[                                . ---- .~\\<|                       ]],
            [[               /~ ~ ~ ~\-------/        |~\\                        ]],
            [[              |_.------.______/_\______/ / \\ _ _                   ]],
            [[              /   - -// \    /[_]={==}=\/  /\\- -                   ]],
            [[               /   _// \ \__/  O  |==| /  // \\-   \                ]],
            [[              |  | *-|--|-\ ( )*__(  )/   |  | * |  |               ]],
            [[               \   -  ~/~ ~ ~      ~~      \   -   /                ]],
            [[                  - -                         - -                   ]],
            [[                                                                    ]],
            [[`7MN.   `7MF`7MM"""YMM    .g8""8q.`7MMF'   `7MF`7MMF`7MMM.     ,MMF']],
            [[  MMN.    M   MM    `7  .dP'    `YM.`MA     ,V   MM   MMMb    dPMM  ]],
            [[  M YMb   M   MM   d    dM'      `MM VM:   ,V    MM   M YM   ,M MM  ]],
            [[  M  `MN. M   MMmmMM    MM        MM  MM.  M'    MM   M  Mb  M' MM  ]],
            [[  M   `MM.M   MM   Y  , MM.      ,MP  `MM A'     MM   M  YM.P'  MM  ]],
            [[  M     YMM   MM     ,M `Mb.    ,dP'   :MM;      MM   M  `YM'   MM  ]],
            [[.JML.    YM .JMMmmmmMMM   `"bmmd"'      VF     .JMML.JML. `'  .JMML.]],
            [[                                                                    ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("p", "Find file", ":Telescope find_files <CR>"),
            dashboard.button("l", "Leetcode", ":Leet<CR>"),
            dashboard.button("q", "Quit", ":qa<CR>"),
        }

        dashboard.section.footer.val = function()
            return ""
        end

        dashboard.section.footer.opts.hl = "Include"
        dashboard.section.header.opts.hl = "Type"

        alpha.setup(dashboard.opts)

        vim.cmd("autocmd FileType alpha setlocal nofoldenable")

        vim.api.nvim_create_autocmd('User', {
            pattern = 'LazyVimStarted',
            once = true,
            callback = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime * 100 + 0.5) / 100

                local line1 = "Let's Write Some Bugs"
                local line2 = "Neovim started up with " .. stats.count .. " plugins in " .. ms .. "ms"
                local padding = math.floor((#line2 - #line1) / 2)
                line1 = string.rep(" ", padding) .. line1 .. string.rep(" ", padding)

                dashboard.section.footer.val = { "", line1, "", line2 }
                pcall(vim.cmd.AlphaRedraw)
            end,
        })
    end,
}

