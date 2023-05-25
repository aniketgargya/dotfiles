local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "lua", "typescript" },
    highlight = {
        enable = true,
        additional_vim_regex_highlightling = true
    },

    rainbow = {
        enable = true,
        extended_mode = true,
    },
}

